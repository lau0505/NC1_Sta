//
//  Add Grammer View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct Add_Grammer_View: View {
    
    @State private var name: String = ""
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
                .padding(.all)
                .textFieldStyle(.automatic)
            
            Text("의미")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 330.0)
                .padding(.top, 40)
            
            TextField("입력하세요" , text: $meaning)
                .padding(.all)
                .textFieldStyle(.automatic)
                  
            Text("설명")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 330.0)
                .padding(.top, 40)
            
            TextField("입력하세요" , text: $explanation)
                    .padding(.all)
                    .textFieldStyle(.automatic)
            
            HStack{
                Text("코드 사진(선택)")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
            
                Image(systemName: "camera")
                    .foregroundColor(Color.gray)
                    .padding([.leading], 190.0)
                Image(systemName: "photo")
                    .foregroundColor(Color.gray)

            }
            .padding(.bottom, 100)
    
            
                Button(action: {}){ //버튼의 보여지는 UI 코드
                       Text("저장하기")
                    }
                .buttonStyle(MyButtonStyle())
                .padding(.top, 80)
            
        }
    }
}


              

struct Add_Grammer_View_Previews: PreviewProvider {
    static var previews: some View {
        Add_Grammer_View()
    }
}
