//
//  ContentView.swift
//  a815HelloSUI
//
//  Created by 申潤五 on 2021/9/26.
//

import SwiftUI

struct ContentView: View {
    @State var r:CGFloat = 0.5
    @State var g:CGFloat = 0.5
    @State var b:CGFloat = 0.5
    
    var body: some View {
        ZStack{
            Color(CGColor(red: r, green: g, blue: b, alpha: 1))
            VStack{
                HStack{
                    Spacer()
                    MyView(label: "R", value: r)
                    Spacer()
                    MyView(label: "G", value: g)
                    Spacer()
                    MyView(label: "B", value: b)
                    Spacer()
                }
                Spacer()
                VStack{
                    Slider(value: $r).padding(.horizontal, 30)
                    Slider(value: $g).padding(.horizontal, 30)
                    Slider(value: $b).padding(.horizontal, 30)
                }
            }
        }
    }
}


struct MyView:View {
    @State var label:String
    @State var value:CGFloat
    
    var body: some View{
        Text("\(label):\(Int(value * 255))").font(.largeTitle)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
