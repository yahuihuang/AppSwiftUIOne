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
            Text("Hello, Grace!")
                .padding()
            Text("BBB")
            HStack {
                Text("AAA")
                Text("BBB")
            }
            ZStack {
                Text("CCC")
                Text("DDD")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
