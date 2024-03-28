//
//  RemoteImage.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct RemoteImage: View {
    var image: Image?
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}


struct FoodRemoteImage: View {
    @StateObject var viewModel = ImageViewModel()
    let urlString: String
    var body: some View {
        RemoteImage(image: viewModel.image)
            .onAppear{
                viewModel.load(fromURLString: urlString)
            }
    }
}

#Preview {
    RemoteImage()
}
