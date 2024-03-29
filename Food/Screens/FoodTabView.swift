//
//  ContentView.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct FoodTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView{
            FoodListView().tabItem {Label("Food", systemImage:"house.fill")}
            AccountView().tabItem {Label("Account", systemImage:"person")}
            OrderView().tabItem {Label("Order", systemImage:"cart")}.badge(order.items.count)
        }
    }
}

#Preview {
    FoodTabView()
}
