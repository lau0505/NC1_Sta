//
//  Grammar Storage TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Grammar_Storage_View: View{
    
    @Binding var cards: [card]
    
//    @State var searchCard: [String] = []
    
    var body: some View {
        NavigationView{
            VStack {
                
                ScrollView {
                    
                    
                    ForEach(cards, id: \.self) { card in
                        //showModal = true
                        NavigationLink( destination: Grammar_Correction_View(name: card.title, meaning: card.meaning, explanation: card.explanation)) {
                            Card_View(title: card.title, meaning: card.meaning)
                        }
                        
                    }
                }
                Spacer()
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: {
                                            var searchCard = cards.map {
                                                $0.title
                                            }
                                            SearchBar_View(searchCard: searchCard, cards: cards)
                                        },
                                        label: {
                                            Image(systemName: "magnifyingglass")
                                                .foregroundColor(Color("MainColor"))
                                                .font(.system(size: 35))
                                        }
                                    )
            )
        }
//        .navigationBarItems(trailing: {
//            HStack{
//                Spacer()
//                Image(systemName: "magnifyingglass")
//                    .foregroundColor(Color("MainColor"))
//                    .font(.system(size: 35))
//            }
//        })
        
    }
}

//struct Grammar_Storage_View_Previews: PreviewProvider {
//    static var previews: some View {
//      Grammar_Storage_View()
//    }
//}

struct card: Hashable {
    var title: String
    var meaning: String
    var explanation: String
}
