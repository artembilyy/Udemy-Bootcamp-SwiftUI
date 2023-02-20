//
//  CustomProgressViewStyle.swift
//  EggTimerSwiftUI
//
//  Created by Artem Bilyi on 19.02.2023.
//

import SwiftUI

struct CustomProgressViewStyle: ProgressViewStyle {

    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3.0)
                .frame(height: 20.0)
                .foregroundColor(.clear)
            if #available(iOS 15.0, *) {
                ProgressView(configuration)
                    .tint(.yellow)
                    .frame(height: 12.0)
                    .padding(.horizontal)
            } else {
                ProgressView(configuration)
                    .frame(height: 12.0)
                    .padding(.horizontal)
            }
        }
    }
}

struct CustomProgressViewStyle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(value: 0.4)
            .progressViewStyle(CustomProgressViewStyle())
            .previewLayout(.sizeThatFits)
    }
}
