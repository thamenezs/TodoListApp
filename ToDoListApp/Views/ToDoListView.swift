//
//  ToDoListItemsView.swift
//  ToDoListApp
//
//  Created by Thais Souza on 15/01/25.
//

import FirebaseFirestore
import SwiftUI


struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    var body: some View {
        NavigationStack {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.deleteItem(id: item.id)
                            }
                        }
                }
                .listStyle(.plain)
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "uv2yWIOWk1drP9ytS8EuPgsUHbF2"
)
}
