//
//  HomeWeatherIcon.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/7/26.
//

import SwiftUI

struct HomeWeatherIcon: View {
    let forecastWeatherCode: Int
    
    init(forecastWeatherCode: Int) {
        self.forecastWeatherCode = forecastWeatherCode
    }
    
    var body: some View {
        let icon = weatherIcons[forecastWeatherCode] ?? weatherIcons.first?.value
        Image(systemName: icon ?? "sun.min")
            .tint(Color.black)
            .foregroundStyle(.tint)
            .font(.system(size: 70))
            .padding(
                EdgeInsets(
                    top: 40,
                    leading: 30,
                    bottom: 0,
                    trailing: 0
                )
            )
    }
}
