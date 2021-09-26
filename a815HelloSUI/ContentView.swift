//
//  ContentView.swift
//  a815HelloSUI
//
//  Created by 申潤五 on 2021/9/26.
//

import SwiftUI

struct ContentView: View {
    @State var inputString:String = ""
    var body: some View {
        VStack{
            Text(inputString)
            Spacer()
            Text("==分割線==")
            HStack{
                Text("請輸入：")
                TextField("", text: $inputString)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
