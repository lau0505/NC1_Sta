//
//  SwiftUIView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack{
           
            VStack(alignment: .leading){
                Text("나만의")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.leading)
                .padding([.top, .trailing], 50.0)
            
            Text("Swift 문법 저장소.")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.leading)
                .padding([.trailing], 100.0)
            }
            Spacer().frame(height: 40)
            
            VStack(alignment: .leading){
            
            Text("어려웠던 영어 설명은 이제 그만!")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.leading)
                .padding([.trailing], 100.0)
                
            Text("나만의 언어로 Swift 문법에 대해 정리해보세요.")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.leading)
                .padding([.trailing], 40.0)
            }
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


struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.system(size:30, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding()
            .background(Color.orange)
            .clipShape(Capsule())
    }
}
    
    


struct StartView_Previews: PreviewProvider {
    static var previews: some View {
       StartView()
    }
}
