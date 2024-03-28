//
//  FoodViewModel.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import Foundation

final class FoodListViewModel: ObservableObject{
    @Published var food: [FoodModel] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowDetail = false
    @Published var selectedFood: FoodModel?
    
    func getFood(){
        isLoading = true
        NetworkManager.shared.getFood{  result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result{
                case .success(let food):
                    self.food = food
                case .failure(let err):
                    switch err{
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
    
}
