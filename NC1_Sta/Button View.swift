//
//  Button View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/03.
//

import SwiftUI

struct Button_View: View {
    var body: some View {
        NavigationLink(destination: Add_Grammar_View()){
            Text("시작하기")
                .frame(maxWidth: 300)
                .frame(height: 45)
                .font(.system(size:20, weight: .bold, design: .rounded))
                .foregroundColor(Color.white)
                .background(Color.orange)
                .cornerRadius(30)
                .padding(.horizontal, 30)
        }
    }
}

struct Button_View_Previews: PreviewProvider {
    static var previews: some View {
        Button_View()
    }
}
