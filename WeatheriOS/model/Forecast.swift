//
//  Forecast.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/5/26.
//

import SwiftUI

struct Forecast: Identifiable {
    let id: UUID = UUID()
    let date: String                 // "time" field — e.g "2024-01-15"
    let maxTemp: Double              // "temperature_2m_max"
    let minTemp: Double              // "temperature_2m_min"
    let weatherCode: Int             // "weathercode" — WMO code e.g 0=clear, 61=rain
    let precipitation: Double        // "precipitation_sum" — mm
    let maxWindSpeed: Double         // "windspeed_10m_max" — km/h
    let sunrise: String              // "sunrise" — e.g "2024-01-15T08:02"
    let sunset: String               // "sunset"  — e.g "2024-01-15T16:18"
}
