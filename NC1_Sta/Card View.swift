//
//  Card View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/03.
//

import SwiftUI

struct Card_View: View {
    @State var title: String
    @State var meaning: String
    
    var body: some View {
        VStack(alignment: .trailing) {
            Button(action: {
                
            }, label: {
                Text(":")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .padding(.trailing)
                
                
            })
           
            HStack {
                VStack(alignment: .leading) {
                    Text("\(title)")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 20)
                        .padding(.leading, 20)
                    
                    Text("\(meaning)")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color("CustomGrayColor"))
                        .padding(.leading, 20)
                       
                }
                Spacer()
            }
            Spacer()
        }
        .frame(width: 300, height: 200)
        .background(Color.orange)
        .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("MainColor"))
            )
            .padding([.top, .horizontal])
        
    }
}

//struct Card_View_Previews: PreviewProvider {
//    static var previews: some View {
//        Card_View()
//    }
//}
