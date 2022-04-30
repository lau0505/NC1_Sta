//
//  Setting TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Setting_TabView: View {
    var body: some View {
        ZStack {
                    Circle()
                        .frame(width: 300, height: 300)
                        .foregroundColor(.pink)
                    
                    Text("\(3)")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
    }
}

struct Setting_TabView_Previews: PreviewProvider {
    static var previews: some View {
        Setting_TabView()
    }
}
