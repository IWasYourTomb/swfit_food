//
//  Alert.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI


struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let  invalidURL = AlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid"), dismissButton: .default(Text("OK")))
                                       
                                       
    static let  invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from the server"), dismissButton: .default(Text("OK")))
    
    static let  invalidData = AlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid"), dismissButton: .default(Text("OK")))
    
    static let  unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete request"), dismissButton: .default(Text("OK")))
}
   
