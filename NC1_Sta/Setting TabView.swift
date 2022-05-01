//
//  Setting TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Setting_TabView: View {
    @State private var someToggle = true
    
    var body: some View {
    
        Toggle("알림 설정", isOn: $someToggle) {
            
            if someToggle {
                Text("On.")
            } else {
                Text("Off.")
            }
        }
        .padding()
    }
}

struct Setting_TabView_Previews: PreviewProvider {
    static var previews: some View {
        Setting_TabView()
    }
}
