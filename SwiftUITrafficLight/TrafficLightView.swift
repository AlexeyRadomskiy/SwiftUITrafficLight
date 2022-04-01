//
//  TrafficLightView.swift
//  SwiftUITrafficLight
//
//  Created by Alexey on 01.04.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct TrafficLightView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentColorLight = CurrentLight.red
    
    private func switchColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentColorLight {
        case .red:
            currentColorLight = .yellow
            greenLightState = lightIsOff
            redLightState = lightIsOn
        case .yellow:
            currentColorLight = .green
            redLightState = lightIsOff
            yellowLightState = lightIsOn
        case .green:
            currentColorLight = .red
            yellowLightState = lightIsOff
            greenLightState = lightIsOn
        }
    }
}

extension TrafficLightView {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                ColorLight(color: .red, opacity: redLightState)
                ColorLight(color: .yellow, opacity: yellowLightState)
                ColorLight(color: .green, opacity: greenLightState)
            
                Spacer()
                
                ChangeColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    switchColor()
                }
            }
            .padding()
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
