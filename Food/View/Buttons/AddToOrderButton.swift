//
//  AddToOrderButton.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct AddToOrderButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color(.brandPrimary))
            .cornerRadius(10)
    }
}

#Preview {
    AddToOrderButton(title: "Add To Order")
}
