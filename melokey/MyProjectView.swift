import SwiftUI

struct MyProjectView: View {
    var body: some View {
        ZStack {
            Color(red: 0.82, green: 0.87, blue: 1)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40) {
                Text("My projects")
                    .font(Font.custom("Gazpacho", size: 48).weight(.black))
                    .foregroundColor(.black)
                    .padding(.top, 40)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 30), count: 3), spacing: 30) {
                    projectCard(title: "+", date: "")
                    projectCard(title: "Untitled Project", date: "Created on 07/29/24")
                    projectCard(title: "", date: "")
                    projectCard(title: "", date: "")
                    projectCard(title: "wee", date: "Created on 07/29/24")
                    projectCard(title: "", date: "")
                }
                .padding(.horizontal, 20)
            }
        }
        .frame(width: 834, height: 1194)
    }
    
    func projectCard(title: String, date: String) -> some View {
        VStack(spacing: 10) {
            if !title.isEmpty {
                Text(title)
                    .font(Font.custom("Gazpacho", size: title == "+" ? 64 : 32).weight(.black))
                    .foregroundColor(.black)
            }
            if !date.isEmpty {
                Text(date)
                    .font(Font.custom("Gazpacho", size: 16).weight(.black))
                    .foregroundColor(Color(red: 0.47, green: 0.45, blue: 0.49))
            }
        }
        .padding()
        .frame(width: 213, height: 320)
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .inset(by: 1)
                .stroke(.black, lineWidth: 1)
        )
    }
}

#Preview {
    MyProjectView()
}
