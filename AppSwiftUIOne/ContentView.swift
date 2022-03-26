//
//  ContentView.swift
//  AppSwiftUIOne
//
//  Created by grace on 2022/3/26.
//

import SwiftUI

struct ContentView: View {
    @State var activeTab: Int = 0
    @State var displayString: String = "這是傳入參數的測試Ｉ"
    var body: some View {
        TabView(selection: $activeTab) {
            Text("in Page \(activeTab)").tabItem { Image(systemName: "list.bullet")}.tag(1)
            
            Text("in Page \(activeTab)").tabItem {
                Image(systemName: "list.bullet")}.tag(2)
            
            Text(displayString).tabItem {
                Image(systemName: "list.bullet")}.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
