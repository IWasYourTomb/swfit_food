//
//  LoadingView.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable{
   
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorview = UIActivityIndicatorView(style: .large)
        activityIndicatorview.color = UIColor.brandColor
        activityIndicatorview.startAnimating()
        return activityIndicatorview
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
}

struct LoadingView: View{
    var body: some View{
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}
