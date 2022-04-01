//
//  ChangeColorButton.swift
//  SwiftUITrafficLight
//
//  Created by Alexey on 01.04.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 240, height: 64)
        .background(Color.blue)
        .cornerRadius(24)
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.white, lineWidth: 3)
        )
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "Start", action: {})
    }
}
