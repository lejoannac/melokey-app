import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.91, green: 0.93, blue: 0.96)
                    .edgesIgnoringSafeArea(.all)

                VStack(spacing: 50) {
                    Text("melokey")
                        .font(Font.custom("March", size: 175))
                        .foregroundColor(Color(red: 0.13, green: 0.20, blue: 0.54))
                    
                    VStack(spacing: 10) {
                        Text("Create New Project")
                            .font(Font.custom("Gazpacho", size: 36).weight(.black))
                            .foregroundColor(.black)
                    }
                    .padding(10)
                    .frame(width: 365, height: 65)
                    .background(.white)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .inset(by: 0.5)
                            .stroke(.black, lineWidth: 0.5)
                    )

                    VStack(spacing: 10) {
                        Text("My projects")
                            .font(Font.custom("Gazpacho", size: 36).weight(.black))
                            .foregroundColor(.black)
                    }
                    .padding(10)
                    .frame(width: 232, height: 65)
                    .background(.white)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .inset(by: 0.5)
                            .stroke(.black, lineWidth: 0.5)
                    )

                    NavigationLink(destination: SettingsView()) {
                        IconSettings(size: "48")
                    }
                    .padding(.bottom, 20)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
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

#Preview {
    ContentView()
}
