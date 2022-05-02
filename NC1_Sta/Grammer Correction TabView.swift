//
//  Grammer Correction TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Grammer_Correction_TabView: View {
    @State private var name = ""
    
    var body: some View {
        VStack{
            
            Text("문법 이름")
            .font(.body)
            .fontWeight(.medium)
            .foregroundColor(Color.gray)
            .multilineTextAlignment(.leading)
            .padding([.trailing], 300.0)
        
            TextField("입력하세요" , text: $name)
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("의미")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding([.trailing], 330.0)
            
            TextField("입력하세요" , text: $name)
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                  
            Text("설명")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding([.trailing], 330.0)
            
                TextField("입력하세요" , text: $name)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("코드 사진(선택)")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding([.trailing], 260.0)
            
            HStack{
                Image(systemName: "camera")
                    .foregroundColor(Color.gray)
                    .padding([.leading], 300.0)
                Image(systemName: "photo")
                    .foregroundColor(Color.gray)

            }
        
            
                Button(action: {}){ //버튼의 보여지는 UI 코드
                           Text("수정하기")
                    }
                    .font(.system(size:30, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .clipShape(Capsule())
            
                Button(action: {}){ //버튼의 보여지는 UI 코드
                       Text("저장하기")
                    }
                    .font(.system(size:30, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .clipShape(Capsule())
            
               
        }
    }
}

struct Grammer_Correction_TabView_Previews: PreviewProvider {
    static var previews: some View {
        Grammer_Correction_TabView()
    }
}
