//
//  Grammer Correction TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Grammer_Correction_TabView: View {
    var body: some View {
        ZStack {
                    Circle()
                        .frame(width: 300, height: 300)
                        .foregroundColor(.blue)
                    
                    Text("\(3)")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
    }
}

struct Grammer_Correction_TabView_Previews: PreviewProvider {
    static var previews: some View {
        Grammer_Correction_TabView()
    }
}
