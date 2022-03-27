//
//  ContentView.swift
//  AppSwiftUIOne
//
//  Created by grace on 2022/3/26.
//

import SwiftUI

struct ContentView: View {
    @State var redBar: Double = 0.5
    @State var greenBar: Double = 0.5
    @State var blueBar: Double = 0.5
    var body: some View {
        
        ZStack {
            // 背景色
            Color(red: redBar, green: greenBar, blue: blueBar)
            
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
