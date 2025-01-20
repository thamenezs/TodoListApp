//
//  SwiftUIView.swift
//  ToDoListApp
//
//  Created by Thais Souza on 16/01/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
                    .font(.system(size: 50))
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
                    .fontWeight(.light)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
