//
//  ContentView.swift
//  Instafilter
//
//  Created by Zach Mommaerts on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .frame(width: 300, height: 300)
                .background(backgroundColor)
                .onTapGesture {
                    showingConfirmation = true
                }
                .confirmationDialog("Change Background", isPresented: $showingConfirmation) {
                    Button("Red") { backgroundColor = .red}
                    Button("Green") { backgroundColor = .green}
                    Button("Blue") { backgroundColor = .blue}
                    Button("Cancel", role: .cancel) {  }
                } message: {
                    Text("Select a new color")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
