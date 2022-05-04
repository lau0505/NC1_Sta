//
//  Bookmark TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Bookmark_View: View {
    var body: some View {
        
        ZStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("MainColor"))
                .font(.system(size: 35))
                .padding(.bottom, 650)
                .padding(.leading, 280)
            
            Bookmark_Card_View(title: "조건문", meaning: "if/else; , switch/case;")
        }
    }
}
struct Bookmark_View_Previews: PreviewProvider {
    static var previews: some View {
        Bookmark_View()
    }
}
