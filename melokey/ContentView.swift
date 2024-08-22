//
//  ContentView.swift
//  melokey
//
//  Created by joanna on 2024-07-24.
//

import SwiftUI

struct ContentView: View {
    
//    init() {
//        for fontFamily in UIFont.familyNames {
//            for font in UIFont.fontNames(forFamilyName: fontFamily) {
//                print ("--\(font)")
//            }
//        }
//        
//    }
    var body: some View {
        ZStack {
            
            Color(red: 0.91, green: 0.93, blue: 0.96)
                .edgesIgnoringSafeArea(.all)
                .rotationEffect(.degrees(90))
            
            VStack(spacing: 50) {

                Text("melokey")
                    .font(Font.custom("March", size: 175))
                    .foregroundColor(Color(red: 0.13, green: 0.20, blue: 0.54))
                    .rotationEffect(.degrees(0))
                
                
                VStack(spacing: 10) {
                    Text("Create New Project")
                        .font(Font.custom("Gazpacho", size: 36).weight(.black))
                        .foregroundColor(.black)
                        .rotationEffect(.degrees(0))
                    
                }
                .padding(10)
                .frame(width: 365, height: 65)
                .background(.white)
                .cornerRadius(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .inset(by: 0.50)
                        .stroke(.black, lineWidth: 0.50)
                )
                
                // My projects button
                VStack(spacing: 10) {
                    Text("My projects")
                        .font(Font.custom("Gazpacho", size: 36).weight(.black))
                        .foregroundColor(.black)
                        .rotationEffect(.degrees(0))
                }
                .padding(10)
                .frame(width: 232, height: 65)
                .background(.white)
                .cornerRadius(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .inset(by: 0.50)
                        .stroke(.black, lineWidth: 0.50)
                )
                
              
                                Button(action: {
                                    print("Settings button tapped")
                                }) {
                                    IconSettings(size: "48")
                                }
                                .padding(.bottom, 30)                             }
                            .frame(maxHeight: .infinity)
                        }
                        .frame(width: 834, height: 1194)
                    }
                }

                struct IconSettings: View {
                    var size: String

                    var body: some View {
                        Image("Settings")
                            .resizable()
                            .frame(width: CGFloat(Double(size)!), height: CGFloat(Double(size)!))
                            .foregroundColor(.black)
                    }
                }
            
        
    


struct Constants {
  static let SchemesOnPrimary: Color = .white
}

#Preview {
    ContentView()
}
