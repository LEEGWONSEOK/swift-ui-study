//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by Gwonseok Lee on 11/29/23.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Linear Gradient
            Text("Linear Gradient")
                .font(.title)
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom
                    )
                )
                .frame(width: 300, height: 150)
            
            // Radial Gradient
            Text("Radial Gradient")
                .font(.title)
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300)
                )
                .frame(width: 300, height: 150)
            
            // Angular Gradient
            Text("Angular Gradient")
                .font(.title)
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        center: .center,
                        angle: .degrees(90)
                    )
                )
                .frame(width: 300, height: 150)
            
        }
    }
}

#Preview {
    GradientBasic()
}
