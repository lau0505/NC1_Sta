//
//  Add Grammer TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Add_Grammer_TabView: View {
    var body: some View {
        ZStack {
                    Circle()
                        .frame(width: 300, height: 300)
                        .foregroundColor(.green)
                    
                    Text("\(3)")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
    }
}

struct Add_Grammer_TabView_Previews: PreviewProvider {
    static var previews: some View {
        Add_Grammer_TabView()
    }
}
