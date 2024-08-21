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
            for font in UIFont.fontNames(forFamilyName: fontFamily) {
                print ("--\(font)")
            }
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
