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
    
    func getTempRange() -> String {
        let currentForecast = forecasts.first
        guard let forecast = currentForecast else { return "--°F - --°F" }
        return "\(Int(forecast.minTemp))°F - \(Int(forecast.maxTemp))°F"
    }
    
    func getWeatherHeadline() -> [WeatherLine] {
        return getWeatherLines(for: getCurrentWeatherCode())
    }
    
    func getWeatherSarcasmText() -> String {
        return getWeatherSarcasm(for: getCurrentWeatherCode())
    }
    
    init(
        forecasts: [Forecast] = [Forecast](),
        isLoading: Bool = false
    ) {
        self.forecasts = [
            Forecast(
                date: "2025-05-05",
                maxTemp: 75.0,
                minTemp: 58.0,
                weatherCode: 65,
                precipitation: 0.0,
                maxWindSpeed: 12.0,
                sunrise: "2025-05-05T05:42",
                sunset: "2025-05-05T20:18"
            ),
            Forecast(
                date: "2025-05-06",
                maxTemp: 62.0,
                minTemp: 48.0,
                weatherCode: 3,
                precipitation: 0.2,
                maxWindSpeed: 18.0,
                sunrise: "2025-05-06T05:40",
                sunset: "2025-05-06T20:19"
            ),
            Forecast(
                date: "2025-05-07",
                maxTemp: 54.0,
                minTemp: 44.0,
                weatherCode: 61,
                precipitation: 4.5,
                maxWindSpeed: 24.0,
                sunrise: "2025-05-07T05:39",
                sunset: "2025-05-07T20:21"
            ),
            Forecast(
                date: "2025-05-08",
                maxTemp: 50.0,
                minTemp: 41.0,
                weatherCode: 63,
                precipitation: 8.2,
                maxWindSpeed: 30.0,
                sunrise: "2025-05-08T05:37",
                sunset: "2025-05-08T20:22"
            ),
            Forecast(
                date: "2025-05-09",
                maxTemp: 55.0,
                minTemp: 46.0,
                weatherCode: 45,
                precipitation: 0.0,
                maxWindSpeed: 15.0,
                sunrise: "2025-05-09T05:36",
                sunset: "2025-05-09T20:24"
            ),
            Forecast(
                date: "2025-05-10",
                maxTemp: 70.0,
                minTemp: 54.0,
                weatherCode: 1,
                precipitation: 0.0,
                maxWindSpeed: 10.0,
                sunrise: "2025-05-10T05:34",
                sunset: "2025-05-10T20:25"
            ),
            Forecast(
                date: "2025-05-11",
                maxTemp: 78.0,
                minTemp: 60.0,
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
