//
//  ToDoListViewViewModel.swift
//  ToDoListApp
//
//  Created by Thais Souza on 16/01/25.
//

import FirebaseFirestore
import Foundation

// ViewModel for the complete list of items

class ToDoListViewViewModel: ObservableObject {
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    @Published var showingNewItemView = false

    func deleteItem(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
