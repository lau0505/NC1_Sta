//
//  Grammar Storage TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Grammar_Storage_View: View {
    var body: some View {
        ZStack{
        
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("MainColor"))
                .font(.system(size: 35))
                .padding(.bottom, 700)
                .padding(.leading, 280)
            
            Card_View(title: "조건문", meaning: "if/else / switch case;")
            
        }
    }
}

struct Grammar_Storage_View_Previews: PreviewProvider {
    static var previews: some View {
      Grammar_Storage_View()
    }
}
