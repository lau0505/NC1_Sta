//
//  Add Grammer View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct Add_Grammar_View: View {
    
    @State private var name: String = ""
    @State private var meaning = ""
    @State private var explanation = ""
    
    @State private var showingAlert = false
    
    @Binding var cards: [card]
    
    var body: some View {
        NavigationView{
            VStack{
                
                Text("문법 이름")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .padding(.trailing, 260)
                
                
                TextField("입력하세요" , text: $name)
                    .padding(.leading, 33)
                    .textFieldStyle(.automatic)
                
                Text("의미")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .padding(.top, 30)
                    .padding(.trailing, 290)
                
                TextField("입력하세요" , text: $meaning)
                    .padding(.leading, 33)
                    .textFieldStyle(.automatic)
                
                Text("설명")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .padding(.top, 30)
                    .padding(.trailing, 290)
                
                TextField("입력하세요" , text: $explanation)
                    .padding(.leading, 33)
                    .textFieldStyle(.automatic)
                
                HStack{
                    Text("코드 사진(선택)")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color.gray)
                    
                    
                    Image(systemName: "camera")
                        .foregroundColor(Color.gray)
                        .padding(.leading, 150.0)
                    Image(systemName: "photo")
                        .foregroundColor(Color.gray)
                    
                }
                .padding(.top, 30)
                .padding(.bottom, 100)
                
                
                
                Button(action: {
                    self.showingAlert.toggle()
                    cards.append(card(title: name, meaning: meaning, explanation: explanation))
                }){ //버튼의 보여지는 UI 코드
                    Text("저장하기")
                }
                .alert(isPresented: $showingAlert) {
                            Alert(title: Text("저장완료"), message: nil,
                                  dismissButton: .default(Text("확인")))
                        }
                .buttonStyle(MyButtonStyle())
                .padding(.top, 30)
                
                
            }
        }
        .navigationBarHidden(false)
    }
}




//struct Add_Grammar_View_Previews: PreviewProvider {
//    static var previews: some View {
//        Add_Grammar_View()
//    }
//}
