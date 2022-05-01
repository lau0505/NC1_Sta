//
//  ContentView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/04/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Add_Grammer_TabView()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("문법 추가")
                }
            Grammer_Storage_TabView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("문법 저장소")
                }
            Bookmark_TabView()
                .tabItem {
                    Image(systemName: "bookmark.fill")
                    Text("북마크")
                }
            Setting_TabView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("설정")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
