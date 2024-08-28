import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var masterVolume: Float = 50.0
    @State private var metronomeVolume: Float = 50.0
    @State private var soundFXVolume: Float = 50.0
    @State private var isDarkModeOn: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.91, green: 0.93, blue: 0.96)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    HStack {
                        Button(action: {
                            // Dismiss the current view to go back
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("Union")
                                .font(.system(size: 24))
                                .foregroundColor(.black)
                        }
                        Spacer()
                    }
                    .padding(.horizontal, 50)
                    
                    Spacer() // Spacer above the white square
                    
                    VStack(spacing: 50) {
                        Text("settings.")
                            .font(Font.custom("Gazpacho", size: 64).weight(.black))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .center) // Center the title
                        
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
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.25), radius: 4, y: 4)
                    .frame(width: 350) // Set the width of the white rectangle
                    
                    Spacer() // Spacer below the white square
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .navigationBarTitle("Settings", displayMode: .inline)
            .navigationBarHidden(true) // Hide the default navigation bar
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
