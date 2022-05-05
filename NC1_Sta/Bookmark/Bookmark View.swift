//
//  Bookmark TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Bookmark_View: View {
    
    @Binding var cards: [card]
    @Binding var bookCards: [bookCard]
    var body: some View {
        
        NavigationView{
            VStack {
                
                ScrollView {
                    ForEach(bookCards, id: \.self) { bookCard in
                        Bookmark_Card_View(title: bookCard.title, meaning: bookCard.meaning, state: bookCard.state)
                    }
                }
                Spacer()
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: {
                                            let searchCard = cards.map {
                                                $0.title
                                            }
                                            SearchBar_View(searchCard: searchCard, cards: cards, bookCards: bookCards)
                                        },
                                        label: {
                                            Image(systemName: "magnifyingglass")
                                                .foregroundColor(Color("MainColor"))
                                                .font(.system(size: 25))
                                                .padding(.trailing, 10)
                                        }
                                    )
            )
        }
    }
}
//struct Bookmark_View_Previews: PreviewProvider {
//    static var previews: some View {
//        Bookmark_View()
//    }
//}
