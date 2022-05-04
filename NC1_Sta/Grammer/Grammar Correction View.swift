//
//  Grammer Correction TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Grammar_Correction_View: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var imagePickerPresented = false
    @State var selectedImage: UIImage?
    @State var grammarImage: Image?
    
    @State var name: String
    @State var meaning: String
    @State var explanation: String
    
    @State private var showingAlert = false
    
    @State var image: Image
    
    @State var state: String = "0"
    
    @Binding var cards: [card]
    @Binding var bookCards: [bookCard]
    
    
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
            
            Text("북마크")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .padding(.top, 30)
                .padding(.trailing, 290)
            
                TextField("" , text: $state)
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
            .padding(.bottom, 20)
            
          
            
            VStack{
                
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)

                
            
            Button(action: {
                bookCards.append(bookCard(title: name, meaning: meaning, explanation: explanation, state: state))
                self.presentationMode.wrappedValue.dismiss()
//                self.showingAlert.toggle()
                //cards.indices.filter{ cards[$0] == card(title: name, meaning: meaning, explanation: explanation, state: "0") }.forEach{cards[$0] = card(title: name, meaning: meaning, explanation: explanation, state: "1")}
            }){ //버튼의 보여지는 UI 코드
                   Text("저장하기")
                }
            .buttonStyle(MyButtonStyle())
            .padding(.bottom,5)
            
//                Button(action: {
//                    self.showingAlert.toggle()
//                    cards.append(card(title: name, meaning: meaning, explanation: explanation, image: grammarImage == nil ? Image(systemName: "photo") : grammarImage!))
//                }){ //버튼의 보여지는 UI 코드
//                    Text("저장하기")
//                }
//                .alert(isPresented: $showingAlert) {
//                            Alert(title: Text("저장완료"), message: nil,
//                                  dismissButton: .default(Text("확인")))
//                        }
//                .buttonStyle(MyButtonStyle())
//                .padding(.top, 30)
            }
            .padding(.top, 50)
            .padding(.bottom, 150)
        }
        }.navigationBarHidden(false)
    }
}

//struct Grammar_Correction_View_Previews: PreviewProvider {
//    static var previews: some View {
//        Grammar_Correction_View()
//    }
//}
