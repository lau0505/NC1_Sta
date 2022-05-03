//
//  Setting TabView.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Setting_View: View {
    @State private var alert = true
    @State private var darkmode = true
    
    var body: some View {
        
        VStack{
            Toggle("알림 설정", isOn: $alert)
                .foregroundColor(Color.gray)
                .font(.system(size: 20))
                .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                .padding(.horizontal, 30)
                .padding(.bottom, 20)
        
        Toggle("다크모드 설정", isOn: $darkmode)
                .foregroundColor(Color.gray)
                .font(.system(size: 20))
                .toggleStyle(SwitchToggleStyle(tint: Color.orange))
                .padding(.horizontal, 30)
                .padding(.bottom, 20)
            
        .padding(.bottom, 500)
       }
        
    }

}


struct Setting_View_Previews: PreviewProvider {
    static var previews: some View {
        Setting_View()
    }
}
