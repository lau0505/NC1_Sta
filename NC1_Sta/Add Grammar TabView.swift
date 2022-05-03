//
//  Add Grammer TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Add_Grammar_TabView: View {
   
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
                    Text("조건문")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 20)
                        .padding(.leading, 20)
                    
                    Text("if/else;")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color("CustomGrayColor"))
                        .padding(.leading, 20)
                       
                    Text("switch/case;")
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

struct Add_Grammar_TabView_Previews: PreviewProvider {
    static var previews: some View {
        Add_Grammar_TabView()
    }
}
