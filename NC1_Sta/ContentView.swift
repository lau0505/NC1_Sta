//
//  ContentView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var cards: [card] = []
    @State var bookCards: [bookCard] = []
    
    var body: some View {
        TabView {
            
            Add_Grammar_View(cards: $cards)
                .tabItem {
                    Image(systemName: "pencil")
                    Text("문법 추가")
                }
            Grammar_Storage_View(cards: $cards, bookCards: $bookCards)
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("문법 저장소")
                }
            Bookmark_View(cards: $cards, bookCards: $bookCards)
                .tabItem {
                    Image(systemName: "bookmark.fill")
                    Text("북마크")
                }
//            Setting_View()
//                .tabItem {
//                    Image(systemName: "gearshape.fill")
//                    Text("설정")
//                }
        }.accentColor(Color("MainColor"))
    }
}

  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
