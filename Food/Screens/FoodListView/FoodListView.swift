//
//  FoodListView.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct FoodListView: View {
    @StateObject var vm = FoodListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView{
                List{
                    ForEach(vm.food, id:\.id){ food in
                        FoodListItem(food: food)
                            .onTapGesture {
                                vm.selectedFood = food
                                vm.isShowDetail.toggle()
                            }
                    }
                }
                .listStyle(.plain)
                    .navigationTitle("Food")
                    .disabled(vm.isShowDetail)
            }
            .onAppear{
                vm.getFood()
            }
            .blur(radius: vm.isShowDetail ? 20 : 0)
            if vm.isShowDetail{
                FoodDetailView(food: vm.selectedFood!, isShowingDetail: $vm.isShowDetail)
            }
            if vm.isLoading {
                LoadingView()
            }
         }
        .alert(item: $vm.alertItem){ alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    FoodListView()
}
