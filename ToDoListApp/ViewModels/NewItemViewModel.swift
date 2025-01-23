//
//  NewItemViewModel.swift
//  ToDoListApp
//
//  Created by Thais Souza on 16/01/25.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewModel: ObservableObject {
    
    init(){}
    
    @Published var title = ""
    @Published var duedate = Date()
    @Published var showAlert = false
    
    func save() {
        guard canSave else {
            return
        }
        // get current user id
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        // create model
        let newId = UUID().uuidString
        let newItem = ToDoListItem(id: newId, title: title, dueDate: duedate.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)
        
        // save model
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
        
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


