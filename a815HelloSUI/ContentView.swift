//
//  ContentView.swift
//  a815HelloSUI
//
//  Created by 申潤五 on 2021/9/26.
//

import SwiftUI

struct ContentView: View {
    @State var activeTab:Int = 0
    var body: some View {
        TabView(selection: $activeTab) {
            VStack{
                Text("in page \(activeTab)")
                Text("Line 2 in page \(activeTab)")
            }.tabItem {
                Image(systemName: "list.bullet")
            }.tag(5)
            
            
            
            Text("in page \(activeTab)")
                .tabItem {
                    Image(systemName: "list.bullet")
                }.tag(2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
