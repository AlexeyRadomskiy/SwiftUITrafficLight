//
//  ColorLight.swift
//  SwiftUITrafficLight
//
//  Created by Alexey on 01.04.2022.
//

import SwiftUI

struct ColorLight: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .red, opacity: 1)
    }
}

