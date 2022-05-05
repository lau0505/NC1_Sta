//
//  SwiftUIView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct StartView: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("MockupImage")
                    .resizable()
                    .frame(width: 440, height: 953)
                    .opacity(0.9)
                    .offset(x: -17, y: -95)
                
                
                VStack(alignment: .leading){
                    Text("나만의")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("MainColor"))
                        .padding([.top, .trailing], 80)
                        .padding(.bottom, 5)
                    
                    Text("Swift 문법 저장소.")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("MainColor"))
                        .padding(.trailing, 100)
                }
                .offset(x: 10, y: -330)

                
                VStack(alignment: .leading){
                    
                    Text("어려웠던 영어 설명은 이제 그만!")
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("MainColor"))
                        .padding(.trailing, 100.0)
                    
                    Text("나만의 언어로 Swift 문법에 대해 정리해보세요.")
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("MainColor"))
                        .padding(.trailing, 30.0)
                }
                .offset(x: -10, y: -180)
                
                Button(action: {
                    showView = true
                }){ //버튼의 보여지는 UI 코드
                    Text("시작하기")
                }
                .fullScreenCover(isPresented: $showView, content: {
                    ContentView()
                })
                .buttonStyle(MyButtonStyle())
                .padding(.bottom, 200)
                .offset(x: 0, y: 350)

            }
        }
    }
}


struct MyButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: 300)
            .frame(height: 45)
            .font(.system(size:20, weight: .bold, design: .rounded))
            .foregroundColor(Color.white)
            .background(Color("MainColor"))
            .cornerRadius(30)
            .padding(.horizontal, 30)
    }
}



struct StartView_Previews: PreviewProvider {
    static var previews: some View {
       StartView()
    }
}
