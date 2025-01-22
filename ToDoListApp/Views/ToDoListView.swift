//
//  ToDoListItemsView.swift
//  ToDoListApp
//
//  Created by Thais Souza on 15/01/25.
//

import SwiftUI


struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("To DO List")
            .toolbar {
                Button {
                    //Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
