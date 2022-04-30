//
//  StartView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack{
            HStack{
               padding()
                Text("나만의")
                     .font(.largeTitle)
            }
            
            Spacer()
            
            HStack{
                
               Text("Swift 문법 저장소")
                    .font(.largeTitle)
            }
            
            HStack{
            
               Text("어려웠던 영어 설명은 이제 그만!")
                .font(.title)
            }
            
            HStack{
         
               Text("나만의 언어로 Swift 문법에 대해 정리해보세요.")
                 .font(.title)
            }
            
               Spacer()
        
           Button(action: {}) {
                      Text("시작하기")
           }
            
      }
   }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartView()
        }
    }
}
