//
//  ToDoListViewViewModel.swift
//  ToDoListApp
//
//  Created by Thais Souza on 16/01/25.
//

import Foundation

// ViewModel for the complete list of items

class ToDoListViewViewModel: ObservableObject {
    
    init(){}
    
    @Published var showingNewItemView = false

    func deleteItem(id: String) {
        
    }
}
