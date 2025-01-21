//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Thais Souza on 15/01/25.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
        
        // Form
        
        Form {
            TextField("Full name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Emai adress", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(background: .green, title: "Create Account") {
                viewModel.register()
            }
            .padding()
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
