//
//  NetworkManager.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import UIKit

final class NetworkManager{
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    static let baseUrl = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    
    private let appetizerUrl = baseUrl + "appetizers"
    
    private init(){}
    
    func getFood() async throws -> [FoodModel]{
        guard let url = URL(string: appetizerUrl) else {
            throw ApiError.invalidURL
        }
        
        let (data,_) = try await URLSession.shared.data(from: url)
        
        do{
            let decoder = JSONDecoder()
            return try decoder.decode(FoodRequest.self, from: data).request
        }catch {
            throw ApiError.invalidData
        }
    }
    
    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void){
         let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey){
            completed(image)
            return
        }
        
        guard let url = URL(string: urlString) else{
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){ data, response, error in
            
            guard let data = data, let image = UIImage(data: data) else{
                 completed(nil)
                return
            }
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
            
        }
        task.resume()
    }
}
