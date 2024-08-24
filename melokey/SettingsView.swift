import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("settings.")
                    .font(Font.custom("Gazpacho", size: 64).weight(.black))
                    .foregroundColor(.black)
                
                VStack(spacing: 40) {
                    Text("Dark Mode")
                    Text("Sound FX Volume")
                    Text("Metronome Volume")
                    Text("Master Volume")
                }
                .font(Font.custom("Gazpacho", size: 20).weight(.black))
                .foregroundColor(.black)
                
                HStack(spacing: 20) {
                    Text("Master Volume")
                    Slider(value: .constant(0.5))
                        .frame(width: 200)
                }
                .padding()
                .background(Color(red: 0.91, green: 0.87, blue: 0.97))
                .cornerRadius(16)
  =
                HStack(spacing: 20) {
                    Text("Dark Mode")
                    Toggle("", isOn: .constant(true))
                        .labelsHidden()
                }
                .padding()
                .background(Color(red: 0.90, green: 0.88, blue: 0.91))
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(Color(red: 0.47, green: 0.45, blue: 0.49), lineWidth: 1)
                )
                .padding(.top, 20)
            }
            .padding()
            .rotationEffect(.degrees(0))
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
