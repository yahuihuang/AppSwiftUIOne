//
//  ContentView.swift
//  AppSwiftUIOne
//
//  Created by grace on 2022/3/26.
//

import SwiftUI

struct ContentView: View {
//    @State var activeTab: Int = 0
    @State var displayString: String = ""
    var body: some View {
        
        VStack {
            // 用Spacer()分三等分
            Spacer()
            Text(displayString)
                .foregroundColor(Color.gray)
            Spacer()
            HStack {
                Text("請輸入字串: ")
                    .padding(.leading, 10.0)
                TextField("", text: $displayString)
            }
            Spacer()
        }
        
//        TabView(selection: $activeTab) {
//            Text("in Page \(activeTab)").tabItem { Image(systemName: "list.bullet")}.tag(1)
//
//            Text("in Page \(activeTab)").tabItem {
//                Image(systemName: "list.bullet")}.tag(2)
//
//            Text(displayString).tabItem {
//                Image(systemName: "list.bullet")}.tag(3)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(displayString: "傳入參數測試-preview!")
    }
}
