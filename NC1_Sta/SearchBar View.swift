//
//  SerchBar View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/04.
//

import SwiftUI

struct SearchBar_View: View {
    
    @State var searchCard: [String]
    @State var cards: [card]
    @State var bookCards: [bookCard]
//    @State var image: Image
    
    @State private var searchText = ""
    
    @State var showModal = true
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                
                List {
//                    ForEach(searchCard.filter{$0.hasPrefix(searchText) || searchText == ""}, id:\.self) {
//                        searchText in Text(searchText)
//                    }
                    
                    ForEach(cards, id: \.self) { card in
                        if card.title == searchText {
                            
                            Card_View(title: card.title, meaning: card.meaning)
                                .sheet(isPresented: self.$showModal) {
                                    Grammar_Correction_View(name: card.title, meaning: card.meaning, explanation: card.explanation, image: card.image, cards: $cards, bookCards: $bookCards)
                                }
                            
                        }
                    }
                    
                    
                    
                    
                } //리스트의 스타일 수정
                .listStyle(PlainListStyle())
                //화면 터치시 키보드 숨김
//                .onTapGesture {
//                    hideKeyboard()
//                }
            }
//            .navigationBarTitle("검색기능", displayMode: .inline)
        }
    }
}


//struct SearchBar_View_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar_View()
//    }
//}




