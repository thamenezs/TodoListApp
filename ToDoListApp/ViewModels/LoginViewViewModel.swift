//
//  LoginViewViewModel.swift
//  ToDoListApp
//
//  Created by Thais Souza on 16/01/25.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }
        
        guard isEmail(valid: email) else {
            errorMessage = "Not a valid email"
            return false
        }
        errorMessage = ""
        return true
    }
    
    func isEmail(valid: String) -> Bool {
            let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            return NSPredicate(format: "SELF MATCHES %@", pattern).evaluate(with: valid)
        }

}
