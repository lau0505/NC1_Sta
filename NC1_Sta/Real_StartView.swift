//
//  SwiftUIView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct Real_StartView: View {
    var body: some View {
        VStack{
           Text("나만의")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.leading)
                .padding(.bottom)
            Text("Swift 문법 저장소.")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.leading)
                .padding([.top, .trailing], 0.0)
            Spacer()
            Text("어려웠던 영어 설명은 이제 그만!")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.leading)
            Text("나만의 언어로 Swift 문법에 대해 정리해보세요.")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.leading)
                .padding(0.0)
                
            Spacer()
            
            Button(action: {}){ //버튼의 보여지는 UI 코드
                       Text("시작하기")
                }
                .font(.system(size:30, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .clipShape(Capsule())
        }
        
    }
}

struct Real_StartView_Previews: PreviewProvider {
    static var previews: some View {
        Real_StartView()
    }
}
