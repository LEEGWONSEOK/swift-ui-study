//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by Gwonseok Lee on 11/29/23.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Image(systemName: "person.fill.badge.plus")     
            // sf symbol에 저장되어 있는 아이콘 사용 가능
                .resizable()
            // rendermode에서 original로 하게 되면,
            // 실제 color에서 multi color로 변경되게 됩니다.
            // 즉 고유 값 컬러로 변경되어서 color를 변경하더라도 해당 부분은 변경되지 않는 컬러 값이 됩니다.
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    IconBasic()
}
