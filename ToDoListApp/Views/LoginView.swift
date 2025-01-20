//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Thais Souza on 15/01/25.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    
    @State var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)

                //Login form
                Form {
                    TextField("Email Adress", text:  $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                            Text("Log In")
                                .foregroundStyle(.white)
                                .bold()
                            
                        }
                    }
                }
                .offset(y: -50)
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
        
    }
}

#Preview {
    LoginView()
}
