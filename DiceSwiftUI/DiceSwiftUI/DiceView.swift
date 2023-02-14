//
//  DiceView.swift
//  DiceSwiftUI
//
//  Created by Artem Bilyi on 14.02.2023.
//
import SwiftUI

struct DiceView: View {
    let number: Int
    
    var body: some View {
        Image("Dice\(number)")
            .padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(number: 1)
    }
}
