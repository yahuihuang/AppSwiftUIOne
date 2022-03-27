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
//            ColorContainer()
            ctrl
        }
    }
    
    var ctrl: some View {
        VStack {
            HStack {
                MyText(title: "R", value: redBar)
                MyText(title: "G", value: greenBar)
                MyText(title: "B", value: blueBar)
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

struct MyText: View {
    var title: String
    var value: Double
    
    var body: some View {
//        Text("\(title): \(Int(value * 255))").font(.largeTitle);
        Text(String(format: "%@: %03.0f", title, Int(value * 255)))
            .font(.largeTitle)
            .frame(width: 100, height: 40, alignment: .leading);
    }
}

//struct ColorContainer: View {
//    @State var redBar: Double = 0.5
//    @State var greenBar: Double = 0.5
//    @State var blueBar: Double = 0.5
//
//    var body: some View {
//        VStack {
//            HStack {
//                Text("R: \(Int(redBar * 255))").font(.largeTitle)
//                Text("G: \(Int(greenBar * 255))").font(.largeTitle)
//                Text("B: \(Int(blueBar * 255))").font(.largeTitle)
//            }
//            Spacer()
//            VStack {
//                Slider(value: $redBar)
//                Slider(value: $greenBar)
//                Slider(value: $blueBar)
//            }.padding(.all, 30)
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
