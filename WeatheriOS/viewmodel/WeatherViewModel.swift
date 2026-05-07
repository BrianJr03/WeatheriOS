//
//  ViewModel.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/3/26.
//

import Foundation
internal import Combine

@MainActor
class WeatherViewModel: ObservableObject {
    @Published private(set) var forecasts = [Forecast]()
    @Published private(set) var isLoading = false
    
    func addForecast(forecast: Forecast) async {
        forecasts.append(forecast)
    }
    
    func getCurrentWeatherCode() -> Int {
        let currentForecast = forecasts.first
        return currentForecast?.weatherCode ?? 0
    }
    
    init(
        forecasts: [Forecast] = [Forecast](),
        isLoading: Bool = false
    ) {
        self.forecasts = [
            Forecast(
                date: "2025-05-05",
                maxTemp: 18.0,
                minTemp: 10.0,
                weatherCode: 61,
                precipitation: 0.0,
                maxWindSpeed: 12.0,
                sunrise: "2025-05-05T05:42",
                sunset: "2025-05-05T20:18"
            ),
            Forecast(
                date: "2025-05-06",
                maxTemp: 15.0,
                minTemp: 9.0,
                weatherCode: 3,
                precipitation: 0.2,
                maxWindSpeed: 18.0,
                sunrise: "2025-05-06T05:40",
                sunset: "2025-05-06T20:19"
            ),
            Forecast(
                date: "2025-05-07",
                maxTemp: 12.0,
                minTemp: 7.0,
                weatherCode: 61,
                precipitation: 4.5,
                maxWindSpeed: 24.0,
                sunrise: "2025-05-07T05:39",
                sunset: "2025-05-07T20:21"
            ),
            Forecast(
                date: "2025-05-08",
                maxTemp: 10.0,
                minTemp: 6.0,
                weatherCode: 63,
                precipitation: 8.2,
                maxWindSpeed: 30.0,
                sunrise: "2025-05-08T05:37",
                sunset: "2025-05-08T20:22"
            ),
            Forecast(
                date: "2025-05-09",
                maxTemp: 13.0,
                minTemp: 8.0,
                weatherCode: 45,
                precipitation: 0.0,
                maxWindSpeed: 15.0,
                sunrise: "2025-05-09T05:36",
                sunset: "2025-05-09T20:24"
            ),
            Forecast(
                date: "2025-05-10",
                maxTemp: 16.0,
                minTemp: 9.0,
                weatherCode: 1,
                precipitation: 0.0,
                maxWindSpeed: 10.0,
                sunrise: "2025-05-10T05:34",
                sunset: "2025-05-10T20:25"
            ),
            Forecast(
                date: "2025-05-11",
                maxTemp: 19.0,
                minTemp: 11.0,
                weatherCode: 0,
                precipitation: 0.0,
                maxWindSpeed: 8.0,
                sunrise: "2025-05-11T05:33",
                sunset: "2025-05-11T20:27"
            )
        ]
        self.isLoading = isLoading
    }
}
