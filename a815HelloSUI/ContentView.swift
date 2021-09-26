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
                    Text("R:\( Int(r * 255) )").font(.largeTitle)
                    Spacer()
                    Text("G:\( Int(g * 255) )").font(.largeTitle)
                    Spacer()
                    Text("B:\( Int(b * 255) )").font(.largeTitle)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
