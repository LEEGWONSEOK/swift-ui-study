//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by Gwonseok Lee on 11/26/23.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
            VStack (spacing: 20) {
                // circle
                Text("circle")
                    .font(.title)
                Circle()
                    //.fill(Color.blue)
                    //.foregroundColor(.pink)
                    //.stroke(Color.red, lineWidth: 20)
                    .trim(from: 0.25, to: 1.0)
                    .stroke(Color.purple, lineWidth: 50)
                    .frame(width: 200, height: 100)
                    .padding()
                
                // Ellipse 타원형
                Text("ellipse")
                    .font(.title)
                Ellipse()
                    .fill(Color.green)
                    .frame(width: 200, height: 100, alignment: .center)
                
                // 캡슐형
                Text("capsule")
                    .font(.title)
                Capsule(style: .circular)
                    .stroke(Color.blue, lineWidth: 30)
                    .frame(width: 200, height: 100, alignment: .center)
            }
            
            // VStack을 하면 화면이 넘어간다고 했는데 안넘어가는 이유?
            VStack (spacing: 20) {
                // 직사각형
                Text("rectangle")
                    .font(.title)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 100, alignment: .center)
                
                // 직사각형
                Text("rectangle")
                    .font(.title)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 100, alignment: .center)
                
                
                // 둥근 직사각형
                Text("rounded-rectangle")
                    .font(.title)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.orange)
                    .frame(width: 200, height: 100)
                
                // 직사각형
                Text("rectangle")
                    .font(.title)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 100, alignment: .center)
                
                
            }
    
        
    }
}

#Preview {
    ShapeBasic()
}
