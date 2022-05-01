//
//  Setting Toggle View.swift
//  NC1_Sta
//
//  Created by 전호정 on 2022/05/01.
//

import SwiftUI

struct Setting_Toggle_View: View {
    @State private var someToggle = true
       
       var body: some View {
           VStack {
               Toggle("확인", isOn: $someToggle)
               
               someToggle ? Text("확인 되었습니다.") : Text("확인 버튼을 눌러주세요.")
           }
           .padding()
       }
}

struct Setting_Toggle_View_Previews: PreviewProvider {
    static var previews: some View {
        Setting_Toggle_View()
    }
}
