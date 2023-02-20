//
//  ItemView.swift
//  XylophoneSwiftUI
//
//  Created by Artem Bilyi on 17.02.2023.
//

import SwiftUI
import AVKit

struct ItemView: View {
    
    let color: Color
    let character: String
    let padding: CGFloat
    
    @State private var audioPlayer: AVAudioPlayer!
    @State private var isTapped = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .overlay(
                    Rectangle()
                        .foregroundColor(color)
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                )
                .padding(.leading, padding)
                .padding(.trailing, padding)
                .opacity(isTapped ? 0.5 : 1)
                .onTapGesture {
                    isTapped = true
                    playSound(soundName: character)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        isTapped = false
                    }
                }
            Text(character)
                .foregroundColor(.white)
                .font(.system(size: 24))
        }
    }
    
    private func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer.play()
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(color: .pink, character: "A", padding: 15)
    }
}
