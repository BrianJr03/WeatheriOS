//
//  OutlinedText.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/7/26.
//
import SwiftUI

struct OutlinedText: View {
    let text: String
    let font: Font
    let strokeColor: Color
    let strokeWidth: CGFloat

    var body: some View {
        Text(text)
            .font(font)
            .foregroundStyle(.clear)
            .overlay {
                Text(text)
                    .font(font)
                    .foregroundStyle(strokeColor)
                    .blur(radius: 0)
            }
            .background {
                Text(text)
                    .font(font)
                    .foregroundStyle(.background)
                    .blur(radius: strokeWidth)
            }
    }
}
