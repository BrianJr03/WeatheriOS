//
//  SettingsScreen.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/5/26.
//
import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                CardView(
                    content: {
                        VStack(alignment: .leading) {
                            Text("Toggle Light/Dark Theme")
                        }
                    },
                    onClick: {
                        
                    }
                )
            }
        }
    }
}

#Preview {
    SettingsScreen()
}
