//
//  Add Grammer View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct Add_Grammar_View: View {
    @State var imagePickerPresented = false
    @State var selectedImage: UIImage?
    @State var grammarImage: Image?
    
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
                    
                    Button(action: {
                        imagePickerPresented.toggle()
                    }, label: {
                        VStack {
                            let image = grammarImage == nil ? Image(systemName: "photo") : grammarImage ?? Image(systemName: "photo")
                            image
                                .resizable()
                                .scaledToFill()
                                .foregroundColor(Color.gray)
                                .frame(width: 15, height: 15)
                                .padding(.top, 20)
                        }
                    })
                    .sheet(isPresented: $imagePickerPresented,
                           onDismiss: loadImage,
                           content: { ImagePicker(image: $selectedImage) })
                    .padding(.bottom, 20)
                    
                    
//                    grammarImage
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 100, height: 100)
                    
                    
                }
                .padding(.top, 30)
                .padding(.bottom, 100)
                
                
                
                Button(action: {
                    self.showingAlert.toggle()
                    cards.append(card(title: name, meaning: meaning, explanation: explanation, image: grammarImage == nil ? Image(systemName: "photo") : grammarImage!))
                }){ //버튼의 보여지는 UI 코드
                    Text("추가하기")
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
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        grammarImage = Image(uiImage: selectedImage)
    }
}




//struct Add_Grammar_View_Previews: PreviewProvider {
//    static var previews: some View {
//        Add_Grammar_View()
//    }
//}
