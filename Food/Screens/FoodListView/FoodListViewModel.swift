//
//  FoodViewModel.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import Foundation

@MainActor final class FoodListViewModel: ObservableObject{
    @Published var food: [FoodModel] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowDetail = false
    @Published var selectedFood: FoodModel?
    
    func getFood(){
        isLoading = true
        Task{
            do{
                food = try await NetworkManager.shared.getFood()
                isLoading = false
            }catch{
                if let apiError = error as? ApiError{
                    switch apiError{
                        case .invalidData:
                            alertItem = AlertContext.invalidData
                        case .invalidURL:
                            alertItem = AlertContext.invalidURL
                        case .invalidResponse:
                            alertItem = AlertContext.invalidResponse
                        case .unableToComplete:
                            alertItem = AlertContext.unableToComplete
                    }
            }else{
                alertItem = AlertContext.invalidResponse
            }
                isLoading = false
        }
    }
    
}
