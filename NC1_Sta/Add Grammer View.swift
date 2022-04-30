//
//  Add Grammer View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct Add_Grammer_View: View {
    
    @State private var name: String = ""
    
    var body: some View {
        VStack{
            
            Text("문법 이름")
            .font(.body)
            .fontWeight(.medium)
            .foregroundColor(Color.gray)
            .multilineTextAlignment(.leading)
            .padding(.leading)
        
            TextField("입력하세요" , text: $name)
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("의미")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
            TextField("입력하세요" , text: $name)
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                  
            Text("설명")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
                TextField("입력하세요" , text: $name)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("코드 사진")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
            
            HStack{
                TextField("입력하세요" , text: $name)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())


                
                Image(systemName: "camera")
                    .foregroundColor(Color.gray)
                Image(systemName: "photo")
                    .foregroundColor(Color.gray)
                    .padding(.trailing, 20.0)
            }
            Spacer().frame(height:250)
            
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


              

struct Add_Grammer_View_Previews: PreviewProvider {
    static var previews: some View {
        Add_Grammer_View()
    }
}
