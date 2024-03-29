//
//  FoodApp.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

@main
struct FoodApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            FoodTabView().environmentObject(order)
        }
    }
}
