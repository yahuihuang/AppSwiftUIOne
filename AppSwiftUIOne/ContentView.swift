//
//  ContentView.swift
//  AppSwiftUIOne
//
//  Created by grace on 2022/3/26.
//

import SwiftUI

struct ContentView: View {
//    @State var activeTab: Int = 0
//    @State var displayString: String = ""
    @State var redBar: Float = 0
    @State var greenBar: Float = 0
    @State var blueBar: Float = 0
    var body: some View {
        VStack {
            HStack {
                Text("R: \(Int(redBar * 255))").font(.largeTitle)
                Text("G: \(Int(greenBar * 255))").font(.largeTitle)
                Text("B: \(Int(blueBar * 255))").font(.largeTitle)
            }
            Spacer()
            VStack {
                Slider(value: $redBar)
                Slider(value: $greenBar)
                Slider(value: $blueBar)
            }.padding(.all, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
