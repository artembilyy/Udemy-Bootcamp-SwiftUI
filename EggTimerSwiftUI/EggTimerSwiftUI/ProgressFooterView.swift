//
//  ProgressFooterView.swift
//  EggTimerSwiftUI
//
//  Created by Artem Bilyi on 19.02.2023.
//

import SwiftUI

struct ProgressFooterView: View {
    var totalTime: Double
    var secondsPassed: Double

    var body: some View {
        VStack {
            ProgressView(value: secondsPassed / totalTime)
                .progressViewStyle(CustomProgressViewStyle())
                .padding()
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                        .foregroundColor(.white)
                    Label("\(String(format: "%.0f", secondsPassed))", systemImage: "hourglass.bottomhalf.fill")
                        .foregroundColor(.white)

                }
                .padding()
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                        .foregroundColor(.white)
                    Label("\(String(format: "%.0f", totalTime))", systemImage: "hourglass.tophalf.fill")
                        .foregroundColor(.white)

                }
                .padding()
            }
        }
        .padding([.top, .horizontal])
    }
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressFooterView(totalTime: 100, secondsPassed: 10)
    }
}
