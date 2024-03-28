//
//  FoodModel.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import Foundation


struct FoodRequest: Decodable{
    let request: [FoodModel]
}

struct FoodModel: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}
