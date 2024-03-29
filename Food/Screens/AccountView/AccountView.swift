//
//  AccountView.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import SwiftUI

struct AccountView: View {
    @StateObject var vm = AccountViewModel()
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $vm.user.firstName)
                    TextField("Last Name", text: $vm.user.lastName)
                    TextField("Email", text: $vm.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthdate", selection: $vm.user.birthdate, displayedComponents: .date)
                    Button{
                        vm.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                    
                    Section(header: Text("Requests")){
                        Toggle("Extra Napkins", isOn: $vm.user.extraNapkins)
                            .toggleStyle(SwitchToggleStyle(tint: .brandColor))
                        Toggle("Frequent Refills", isOn: $vm.user.frequentRefills)
                            .toggleStyle(SwitchToggleStyle(tint: .brandColor))
                    }
                }
            }
                .navigationTitle("Account")
        }
        .alert(item: $vm.alert){ alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
