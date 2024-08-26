import SwiftUI

struct SettingsView: View {
    @State private var masterVolume: Float = 50.0
    @State private var metronomeVolume: Float = 50.0
    @State private var soundFXVolume: Float = 50.0

    var body: some View {
        ZStack {
            VStack(spacing: 75) {
                Text("settings.")
                    .font(Font.custom("Gazpacho", size: 64).weight(.black))
                    .foregroundColor(.black)

                VStack(spacing: 40) {
                
                    HStack {
                        Text("Master Volume")
                            .frame(width: 230, alignment: .leading)
                        Slider(value: $masterVolume, in: 0...100, step: 1)
                            .accentColor(.gray)
                            .frame(width: 200)

                        Text("\(Int(masterVolume))")
                            .font(Font.custom("Gazpacho", size: 20).weight(.black))
                            .foregroundColor(.black)
                            .frame(width: 50, alignment: .leading)
                    }

                    HStack {
                        Text("Metronome Volume")
                            .frame(width: 230, alignment: .leading)
                        Slider(value: $metronomeVolume, in: 0...100, step: 1)
                            .accentColor(.gray)
                            .frame(width: 200)

                        Text("\(Int(metronomeVolume))")
                            .font(Font.custom("Gazpacho", size: 20).weight(.black))
                            .foregroundColor(.black)
                            .frame(width: 50, alignment: .leading)
                    }

                    HStack {
                        Text("Sound FX Volume")
                            .frame(width: 230, alignment: .leading)
                        Slider(value: $soundFXVolume, in: 0...100, step: 1)
                            .accentColor(.gray)
                            .frame(width: 200)

                        Text("\(Int(soundFXVolume))")
                            .font(Font.custom("Gazpacho", size: 20).weight(.black))
                            .foregroundColor(.black)
                            .frame(width: 50, alignment: .leading)
                    }
                }
                .font(Font.custom("Gazpacho", size: 20).weight(.black))
                .foregroundColor(.black)

                HStack(spacing: 20) {
                    Text("Dark Mode")
                        .frame(width: 230, alignment: .leading)
                    Toggle("", isOn: .constant(true))
                        .labelsHidden()
                        .frame(width: 50, alignment: .leading)
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
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
