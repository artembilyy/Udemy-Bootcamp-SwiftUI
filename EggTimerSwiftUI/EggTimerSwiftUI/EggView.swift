//
//  EggView.swift
//  EggTimerSwiftUI
//
//  Created by Artem Bilyi on 19.02.2023.
//

import SwiftUI

struct EggView: View {
    let kind: String
    let time: Double
    let action: (Double) -> Void
    
    var body: some View {
        VStack {
            Image(kind)
                .resizable()
                .scaledToFit()
            Text(kind.capitalized)
                .bold()
                .foregroundColor(.white)
                .foregroundColor(.cyan)
        }
        .onTapGesture {
            action(time)
        }
    }
}

struct EggView_Previews: PreviewProvider {
    static var previews: some View {
        EggView(kind: "soft", time: 10) { _ in
            
        }
    }
}
