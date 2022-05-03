//
//  Grammer Correction TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Grammer_Correction_View: View {
    @State private var name = ""
    @State private var meaning = ""
    @State private var explanation = ""
    
    var body: some View {
        
       
        VStack{
 
            Text("문법 이름")
            .font(.body)
            .fontWeight(.medium)
            .foregroundColor(Color.gray)
            .multilineTextAlignment(.leading)
            .padding(.top, 30)
            .padding(.trailing, 300.0)
        
            TextField("입력하세요" , text: $name)
                .padding(.horizontal)
                .padding(.bottom, 30)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("의미")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 330.0)
            
            TextField("입력하세요" , text: $meaning)
                .padding(.horizontal)
                .padding(.bottom, 30)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                  
            Text("설명")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 330.0)
            
                TextField("입력하세요" , text: $explanation)
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack{
                Text("코드 사진(선택)")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    
                    
                Image(systemName: "camera")
                    .foregroundColor(Color.gray)
                    .padding(.leading, 190.0)
                Image(systemName: "photo")
                    .foregroundColor(Color.gray)
                

            }
            .padding(.bottom, 150)
          
            
            VStack{
            
            Button(action: {}){ //버튼의 보여지는 UI 코드
                   Text("수정하기")
                }
            .buttonStyle(MyButtonStyle())
            .padding(.bottom,5)
                
            Button(action: {}){ //버튼의 보여지는 UI 코드
                   Text("저장하기")
                }
            .buttonStyle(MyButtonStyle())
            .padding(.bottom,5)
            
            Button(action: {}){ //버튼의 보여지는 UI 코드
                   Text("북마크 화면에 추가")
                }
            .buttonStyle(MyButtonStyle())
            .padding(.bottom,5)
                
                
                
            }
               
        }
    }
}

struct Grammer_Correction_View_Previews: PreviewProvider {
    static var previews: some View {
        Grammer_Correction_View()
    }
}
