import SwiftUI

struct SettingsView: View {
    @State private var masterVolume: Float = 50.0
    @State private var metronomeVolume: Float = 50.0
    @State private var soundFXVolume: Float = 50.0
    @State private var isDarkModeOn: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.clear.edgesIgnoringSafeArea(.all)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 500, height: 400) // Fixed size for consistent layout
                
                VStack(spacing: 75) {
                    HStack {
                        NavigationLink(destination: ContentView()) {
                            Image("Union")
                                .font(.system(size: 24))
                                .foregroundColor(.black)
                        }
                        Spacer()
                        Text("settings.")
                            .font(Font.custom("Gazpacho", size: 64).weight(.black))
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 50)
                    
                    VStack(spacing: 40) {
                        VolumeControl(label: "Master Volume", volume: $masterVolume)
                        VolumeControl(label: "Metronome Volume", volume: $metronomeVolume)
                        VolumeControl(label: "Sound FX Volume", volume: $soundFXVolume)
                        
                        HStack {
                            Text("Dark Mode")
                                .frame(width: 230, alignment: .leading)
                            Toggle("", isOn: $isDarkModeOn)
                                .labelsHidden()
                        }
                    }
                    .font(Font.custom("Gazpacho", size: 20).weight(.black))
                    .foregroundColor(.black)
                    .padding()
                    .shadow(color: Color.black.opacity(0.25), radius: 4, y: 4)
                }
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct VolumeControl: View {
    var label: String
    @Binding var volume: Float

    var body: some View {
        HStack {
            Text(label)
                .frame(width: 230, alignment: .leading)
            Slider(value: $volume, in: 0...100, step: 1)
                .accentColor(.gray)
                .frame(width: 200)
            Text("\(Int(volume))")
                .font(Font.custom("Gazpacho", size: 20).weight(.black))
                .foregroundColor(.black)
                .frame(width: 50, alignment: .leading)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
