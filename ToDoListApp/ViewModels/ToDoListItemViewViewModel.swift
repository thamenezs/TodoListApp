//
//  ToDoListItemViewViewModel.swift
//  ToDoListApp
//
//  Created by Thais Souza on 16/01/25.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

// View model for each item of the list

class ToDoListItemViewViewModel: ObservableObject {
    
    init(){}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
