//
//  CustomComponentWithBinding.swift
//  Bookworm
//
//  Created by Adam Sayer on 9/8/2024.
//

import SwiftUI

struct PushButton: View {
    let title: String
    
    @Binding var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(LinearGradient(colors: isOn ? onColors : offColors, startPoint: UnitPoint.top, endPoint: .bottom))
        .foregroundStyle(.white)
        .clipShape(.capsule)
            .shadow(radius: isOn ? 0 : 5)
    }
}


struct CustomComponentWithBinding: View {
    
    @State private var rememberMe = false
    
    var body: some View {
        VStack {
            PushButton(title: "Remember Me", isOn: $rememberMe)
            Text(rememberMe ? "On" : "Off")
        }
    }
}

#Preview {
    CustomComponentWithBinding()
}
