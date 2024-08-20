//
//  ContentView.swift
//  melokey
//
//  Created by joanna on 2024-07-24.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        for fontFamily in UIFont.familyNames {
            print(fontFamily)
        }
        
    }
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
