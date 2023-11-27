//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by Gwonseok Lee on 11/27/23.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            
            // Basic Color
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.purple)
                .frame(width: 300, height: 100, alignment: .center)
            // 실제 앱을 만들때는 다음 Basic Color를 잘 사용하지 X
            
            // Primary Color
            // 자동으로 다크모드 지원
            Text("Primary Color")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.primary)
                .frame(width: 300, height: 100)
            
            // UI Color
            // UIkit에서 사용되는 system color 값을 사용할 수 있음
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100)
            
            // Custom Color
            // 사용자가 직접 hex 값으로 사용하는 방법 : 실무에서는 이거만 쓴다고 보면 됨
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100)
            
            
        }
    }
}

// 다크모드
struct ColorBasic_Previews: PreviewProvider {
    static var previews: some View {
        ColorBasic()
            .preferredColorScheme(.dark)      // primary Color가 어떻게 변하는지 보면 됨
    }
}
