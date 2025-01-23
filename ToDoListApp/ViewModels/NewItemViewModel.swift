//
//  NewItemViewModel.swift
//  ToDoListApp
//
//  Created by Thais Souza on 16/01/25.
//

import Foundation

class NewItemViewModel: ObservableObject {
    
    init(){}
    
    @Published var title = ""
    @Published var duedate = Date()
    @Published var showAlert = false
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard duedate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}


