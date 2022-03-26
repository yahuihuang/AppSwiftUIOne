//
//  ContentView.swift
//  AppSwiftUIOne
//
//  Created by grace on 2022/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, Grace!").font(.largeTitle)
            Spacer()
            Text("BBB")
            HStack {
                Text("AAA1")
                Text("BBB2")
            }
            ZStack {
                Text("CCC3")
                Text("DDD4")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
