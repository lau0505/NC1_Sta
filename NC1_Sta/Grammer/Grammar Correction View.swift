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
                
                TextField("이해완료 / 애매해요 / 부족해요 중 선택" , text: $state)
                    .padding(.leading, 33)
                    .textFieldStyle(.automatic)
                
                
                HStack{
                    Text("코드 사진(선택)")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color.gray)
                    
                    
                    Image(systemName: "camera")
                        .foregroundColor(Color.gray)
                        .padding(.leading, 160.0)
                    Image(systemName: "photo")
                        .foregroundColor(Color.gray)
                    
                }
//                .padding(.top)
                
                
                VStack{
                    
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .padding(.bottom)
                    
                    
                    Button(action: {
                        bookCards.append(bookCard(title: name, meaning: meaning, explanation: explanation, state: state))
                        self.presentationMode.wrappedValue.dismiss()
                        
                    }){ //버튼의 보여지는 UI 코드
                        Text("저장하기")
                    }
                    
                    .buttonStyle(MyButtonStyle())
                    .padding(.bottom,100)
                    
                }
                
                .padding(.top,30)
                .padding(.bottom)
            }
        }
        .navigationBarHidden(false)
    }
}

//struct Grammar_Correction_View_Previews: PreviewProvider {
//    static var previews: some View {
//        Grammar_Correction_View()
//    }
//}
