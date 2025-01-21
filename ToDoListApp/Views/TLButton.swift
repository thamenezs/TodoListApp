//
//  TLButton.swift
//  ToDoListApp
//
//  Created by Thais Souza on 20/01/25.
//

import SwiftUI

struct TLButton: View {
    let background: Color
    let title: String
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
                
            }
        }    }
}

#Preview {
    TLButton(background: .blue, title: "Title", action: {
        //action
    })
}
