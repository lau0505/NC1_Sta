//
//  Grammar Storage TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Grammer_Storage_TabView: View {
    var body: some View {
            Text("ssss")
            
        }
}


struct CardView: View {
    
    var body: some View {
      //  VStack(Spacing:0){
       //     Text()
      //          .bold()
      //          .lineLimit(1)
            Spacer()
        }
    }


let storage = {
   // Storage(title: 조건문, name: "if/else;" , "switch/case;")
   // Storage(title: 루프, name: "For - In;" , "switch/case;")
   // Storage(title: 구조, name: "struct;" , "switch/case;")
}

struct Storage: Identifiable{
    let id = UUID()
    let title: String
    let name: String
}

struct Grammer_Storage_TabView_Previews: PreviewProvider {
    static var previews: some View {
      Grammer_Storage_TabView()
    }
}
