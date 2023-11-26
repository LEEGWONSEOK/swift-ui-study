//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by Gwonseok Lee on 11/26/23.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.title)   // font 사이즈는 다음과 같이 구현
            Text("Title2")
                .font(.title2)  // title에도 종류가 다양함
                .fontWeight(.bold)  // font 두께
            Text("Body")
                .font(.body)
                .bold()     // 다음처럼도 두껍게 표현 가능. .fontWeight(.bold) 와 같다
                .underline(true, color: Color.red)      //밑줄
                .italic()       //이텔릭체
                .strikethrough(true, color: Color.blue)     // 취소선

            // 해당 방법으로 하면 text 크기를 지정할 수 있음
            Text("Hello world2".uppercased())       // 대문자 치환
                .font(.system(size: 25, weight: .semibold, design: .serif))
                // But, font 12, font 40 처럼 하면 디바이스마다 크기와 해상도가 다른데 고정식이라 안좋음
            
            // multiline text alignment
            Text("multiline text alignmenthhhhhhh. multiline text alignment. multiline text alignment. multiline text alignment. multiline text alignment")
                .multilineTextAlignment(.leading)
                // .leading : 왼쪽 정렬, .center : 중앙 정렬, .trailing : 오른쪽 정렬
                .foregroundColor(.red)
                // 글자 색 변경
            
        }
        //Text("1234") : 다음과 같이 진행하면 화면이 넘어갑니다 -> VStack 이용
    }
}

#Preview {
    TextBasic()
}



// 단축키 꿀팁
// cmd + 0 : 좌측 탭 닫기(열기)
// cmd + option + p : 우측 프리뷰 리로드
// cmd + option + [, ] : 커서 위치에 있는 코드 위, 아래로 옮기기
