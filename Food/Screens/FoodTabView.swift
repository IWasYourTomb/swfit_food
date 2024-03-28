//
//  ContentView.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct FoodTabView: View {
    var body: some View {
        TabView{
            FoodListView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Food")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
        }
        .accentColor(.brandColor)
    }
}

#Preview {
    FoodTabView()
}
