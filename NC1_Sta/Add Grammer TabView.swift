//
//  Add Grammer TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Add_Grammer_TabView: View {
   
    var body: some View {
        //GeometryReader { geometry in
        VStack {
            ZStack {
                Text("fff")

            }
            .frame(width: 370, height: 200)
            .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("MainColor"), lineWidth: 1)
                    )
                    .padding([.top, .horizontal])
        //}
        }
        .background(Color.orange)
    }
}

struct Add_Grammer_TabView_Previews: PreviewProvider {
    static var previews: some View {
        Add_Grammer_TabView()
    }
}
