//
//  FoodListItem.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct FoodListItem: View {
    let food: FoodModel
    
    var body: some View {
        HStack{
            FoodRemoteImage(urlString: food.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5){
                Text(food.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(food.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
        }
    }
}

