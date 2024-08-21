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
        ZStack {
            // Background color
            Color(red: 0.91, green: 0.93, blue: 0.96)
                .edgesIgnoringSafeArea(.all)
                .rotationEffect(.degrees(90))
            
            VStack(spacing: 50) { // Adjust the spacing as needed
                // Melokey title at the top
                Text("melokey")
                    .font(Font.custom("March", size: 175))
                    .foregroundColor(Color(red: 0.13, green: 0.20, blue: 0.54))
                    .rotationEffect(.degrees(0)) // No rotation needed

                // Create New Project button
                VStack(spacing: 10) {
                    Text("Create New Project")
                        .font(Font.custom("Gazpacho", size: 36).weight(.black))
                        .foregroundColor(.black)
                        .rotationEffect(.degrees(0)) // No rotation needed
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
                        .rotationEffect(.degrees(0)) // No rotation needed
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
            }
        }
        .frame(width: 834, height: 1194)
    


        
        
        
//        ZStack() {
//        Text("melokey")
//            .font(Font.custom("March", size: 175))
//            .foregroundColor(Color(red: 0.13, green: 0.20, blue: 0.54))
//            .rotationEffect(.degrees(-90))
//        VStack(spacing: 10) {
//            Text("Create New Project")
//                .font(Font.custom("Gazpacho", size: 36).weight(.black))
//                .foregroundColor(.black)
//                .rotationEffect(.degrees(-90))
//        }
//        .padding(10)
//        .frame(height: 365)
//        .background(.white)
//        .cornerRadius(6)
//        .overlay(
//            RoundedRectangle(cornerRadius: 6)
//                .inset(by: 0.50)
//                .stroke(.black, lineWidth: 0.50)
//        )
//        VStack(spacing: 10) {
//            Text("My projects")
//                .font(Font.custom("Gazpacho", size: 36).weight(.black))
//                .foregroundColor(.black)
//                .rotationEffect(.degrees(-90))
//        }
//        .padding(10)
//        .frame(height: 232)
//        .background(.white)
//        .cornerRadius(6)
//        .overlay(
//            RoundedRectangle(cornerRadius: 6)
//                .inset(by: 0.50)
//                .stroke(.black, lineWidth: 0.50)
//        )
//        ZStack() {
//
//        }
//        .frame(width: 64, height: 64)
//        .rotationEffect(.degrees(-90))
//    }
//    .frame(width: 834, height: 1194)
//    .background(Color(red: 0.91, green: 0.93, blue: 0.96))
//    .rotationEffect(.degrees(90))
//        Text("melokey")
//            .font(Font.custom("March", size: 175))
//            .foregroundColor(Color(red: 0.13, green: 0.20, blue: 0.54))
//        // ---
//        Text("Create New Project")
//            .font(Font.custom("Gazpacho", size: 36).weight(.black))
//            .foregroundColor(.black)
//        // ---
//        Text("My projects")
//            .font(Font.custom("Gazpacho", size: 36).weight(.black))
//            .foregroundColor(.black)
//        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .previewInterfaceOrientation(.landscapeLeft)
//    }
//}
struct Constants {
  static let SchemesOnPrimary: Color = .white
}

#Preview {
    ContentView()
}
