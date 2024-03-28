//
//  FoodDetailView.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct FoodDetailView: View {
    let food: FoodModel
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack{
            FoodRemoteImage(urlString: food.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack{
                Text(food.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(food.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack (spacing: 40){
                    NutritionInfo(title: "Calories", value: food.calories)
                    NutritionInfo(title: "Carbs", value: food.carbs)
                    NutritionInfo(title: "Protein", value: food.protein)
                }
            }
            Spacer()
            
            Button{
                print("tap")
            } label: {
                AddToOrderButton(title: "$\(food.price, specifier: "%.2f") - Add To Order")
            }.padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetail = false
        }label: {
            DismissButton()
        }, alignment: .topTrailing)
    }
}


struct NutritionInfo: View{
    let title: String
    let value: Int
    
    var body: some View{
        VStack(spacing: 5){
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
