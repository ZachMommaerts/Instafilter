//
//  ContentView.swift
//  Instafilter
//
//  Created by Zach Mommaerts on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount = 0.0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)
            
            Button("Random Blur") {
                blurAmount = Double.random(in: 0...20)
            }
        }
        .onChange(of: blurAmount) {
                print("new value is \(blurAmount)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
