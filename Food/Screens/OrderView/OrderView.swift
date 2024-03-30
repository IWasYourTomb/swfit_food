//
//  OrderView.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){ food in
                            FoodListItem(food: food)
                        }
                        .onDelete(perform: { indexSet in
                            order.delete(at: indexSet)
                        })
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("tap")
                    }label: {
                        OrderButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom,25)
                }
                
                if order.items.isEmpty{
                    EmptyList(imageName: "empty-order", message: "Your have no items")
                }
            }
                .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}
