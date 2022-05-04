//
//  Bookmark Card View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/04.
//

import SwiftUI

struct Bookmark_Card_View: View {
    @State var title: String
    @State var meaning: String
    @State var state: String
    
    var body: some View {
        VStack(alignment: .trailing) {
            
            
    
    HStack {
        VStack(alignment: .leading) {
            Text("\(title)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.bottom, 20)
                .padding(.leading, 20)
                .padding(.top, 20)
            Text("\(meaning)")
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(Color("CustomGrayColor"))
                .padding(.leading, 20)
            
            HStack{
                state == "1" ? Image(systemName: "checkmark")
                    .foregroundColor(Color.green)
                    .padding(.leading, 220)
                    .padding(.top, 10) : state == "2" ? Image(systemName: "triangle")
                    .foregroundColor(Color.yellow)
                    .padding(.leading, 220)
                    .padding(.top, 10) : state == "3" ? Image(systemName: "xmark")
                    .foregroundColor(Color.red)
                    .padding(.leading, 220)
                    .padding(.top, 10) : Image(systemName: "")
                    .foregroundColor(Color.red)
                    .padding(.leading, 220)
                    .padding(.top, 10)
                state == "1" ? Text("이해완료")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.top, 10) : state == "2" ? Text("애매해요")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.top, 10) : state == "3" ? Text("부족해요")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.top, 10) : Text("")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.top, 10)
                    
            }.padding(.top, 30)
            
        }
        Spacer()
    }
    Spacer()
}
    .frame(width: 330, height: 200)
    .background(Color.orange)
    .cornerRadius(20)
    .overlay(
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color("MainColor"))
    )
    .padding([.top, .horizontal])
        

}
}

//struct Bookmark_Card_View_Previews: PreviewProvider {
//    static var previews: some View {
//        Bookmark_Card_View(title: "조건문", meaning: "if/else; switch/case;", state: 0)
//    }
//}
