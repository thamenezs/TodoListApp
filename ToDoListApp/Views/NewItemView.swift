//
//  NewItemView.swift
//  ToDoListApp
//
//  Created by Thais Souza on 15/01/25.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.title)
                .bold()
                .padding(.top, 50)
            
            Form {
                //Title
                TextField("Todo Name", text: $viewModel.title)
                //Due Date
                DatePicker("Due Date", selection: $viewModel.duedate, in: .now...)
                    .datePickerStyle(.graphical)
                // Button
                TLButton(background: .orange, title: "Save") {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("Humm..."),
                    message: Text("Please, fill in all the fields")
                )
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
