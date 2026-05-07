//
//  CardView.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/4/26.
//

import SwiftUI

struct CardView<Content: View>: View {
    let content: () -> Content
    let onClick: () -> Void

    init(
        @ViewBuilder content: @escaping () -> Content,
        onClick: @escaping () -> Void
    ) {
        self.content = content
        self.onClick = onClick
    }

    var body: some View {
        content()
            .padding()
            .frame(maxWidth: 150)
            .background(.white)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.1), radius: 6, x: 0, y: 2)
            .padding(.horizontal, 16)
            .onTapGesture {
                onClick()
            }
    }
}
