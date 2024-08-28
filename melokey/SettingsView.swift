import SwiftUI

struct SettingsView: View {
    @State private var masterVolume: Float = 50.0
    @State private var metronomeVolume: Float = 50.0
    @State private var soundFXVolume: Float = 50.0
    @State private var isDarkModeOn: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.75)
                        .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    
                    VStack(spacing: 75) {
                        HStack {
                            ZStack {
                                HStack {
                                    Button(action: {
                                        // action for back button
                                    }) {
                                        Image("Union")
                                            .font(.system(size: 24))
                                            .foregroundColor(.black)
                                    }
                                    Spacer()
                                }
                                .padding(.leading, 50)
                                .padding(.top, -200)
                                
                                Text("settings.")
                                    .font(Font.custom("Gazpacho", size: 64).weight(.black))
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: .infinity)
                        }
                        
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
                            
                            HStack {
                                Text("Dark Mode")
                                    .frame(width: 230, alignment: .leading)
                                Toggle("", isOn: $isDarkModeOn)
                                    .labelsHidden()
                            }
                        }
                        .font(Font.custom("Gazpacho", size: 20).weight(.black))
                        .foregroundColor(.black)
                        
                    }
                    .padding()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
