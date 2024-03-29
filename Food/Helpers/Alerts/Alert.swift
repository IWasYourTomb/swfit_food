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
    ///Network errors
    static let  invalidURL = AlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid"), dismissButton: .default(Text("OK")))
    
    
    static let  invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from the server"), dismissButton: .default(Text("OK")))
    
    static let  invalidData = AlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid"), dismissButton: .default(Text("OK")))
    
    static let  unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete request"), dismissButton: .default(Text("OK")))
    
    ///Account errors
    static let  invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Ensure all fileds have been filled out"), dismissButton: .default(Text("OK")))
    
    static let  invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Enter your email"), dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Profile information was saved"), dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error saving or retrieving your profile"), dismissButton: .default(Text("OK")))
}
   
