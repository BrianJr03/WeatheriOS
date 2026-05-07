//
//  WeatherLineView.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/7/26.
//
import SwiftUI

struct WeatherLineView: View {
    let line: WeatherLine

    var body: some View {
        content
            .padding(EdgeInsets(
                top: 0,
                leading: 30,
                bottom: 0,
                trailing: 0
            ))
    }

    private var content: some View {
        guard let outlineWord = line.outlineWord else {
            return AnyView(
                Text(line.text)
                    .font(.system(size: line.size, weight: .bold))
            )
        }

        let parts = line.text.components(separatedBy: outlineWord)

        return AnyView(
            HStack(spacing: 0) {
                // bold filled — before the outline word
                if let before = parts.first, !before.isEmpty {
                    Text(before)
                        .font(.system(size: line.size, weight: .bold))
                }

                // outline / unfilled word
                OutlinedText(
                    text: outlineWord,
                    font: .system(size: line.size),
                    strokeColor: .primary.opacity(0.75),
                    strokeWidth: 1.5
                )

                // bold filled — after the outline word
                if let after = parts.last, !after.isEmpty {
                    Text(after)
                        .font(.system(size: line.size, weight: .bold))
                }
            }
        )
    }
}
