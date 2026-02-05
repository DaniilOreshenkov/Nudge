//
//  ContentView.swift
//  Nudge
//
//  Created by Danya on 04.02.2026.
//

import SwiftUI

struct ContentView: View {
    
    let tesd: String! = "boom"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
