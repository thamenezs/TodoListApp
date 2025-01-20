//
//  SwiftUIView.swift
//  ToDoListApp
//
//  Created by Thais Souza on 16/01/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(.pink)
                .rotationEffect(.degrees(15))
            VStack {
                Text("To Do List")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.system(size: 50))
                Text("Get things done!")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
