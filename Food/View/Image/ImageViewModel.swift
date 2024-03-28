//
//  FoodViewModel.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import Foundation
import SwiftUI

final class ImageViewModel: ObservableObject{
    @Published var image: Image? = nil
    
    func load(fromURLString urlString: String){
        NetworkManager.shared.downloadImage(fromURLString: urlString ){ uiImage in
            guard let uiImage = uiImage else {return}
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}
