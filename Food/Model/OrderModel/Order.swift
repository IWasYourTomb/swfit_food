//
//  Order.swift
//  Food
//
//  Created by matvey on 29.03.2024.
//

import SwiftUI

final class Order: ObservableObject{
    @Published var items: [FoodModel] = []
    
    var totalPrice: Double{
        items.reduce(0) { $0 + $1.price}
    }
    
    func add(_ food: FoodModel){
        items.append(food)
    }
    
    func delet(at offesets: IndexSet){
        items.remove(atOffsets: offesets)
    }
}
