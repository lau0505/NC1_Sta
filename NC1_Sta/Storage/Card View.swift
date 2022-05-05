//
//  Card View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/03.
//

import SwiftUI

struct Card_View: View {
    @State var showCardView: Bool = false
    @State var title: String
    @State var meaning: String
    @State var isActive = false
    var body: some View {
        //        NavigationView{
        VStack(alignment: .trailing) {

            HStack {
                VStack(alignment: .leading) {
                    Text("\(title)")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    
                    Text("\(meaning)")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color("CustomGrayColor"))
                        .padding(.leading, 20)
                        .padding(.top, 20)
                    
                }
                Spacer()
            }
            Spacer()
        }
        .frame(width: 330, height: 200)
        .background(Color.orange)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color("MainColor"))
        )
        
    }
}

struct Card_View_Previews: PreviewProvider {
    static var previews: some View {
        Card_View(title: "조건문", meaning: "if/else; , switch/case;")
    }
}
