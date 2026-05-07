//
//  WeatherRepository.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/5/26.
//

import Foundation

protocol WeatherRepoProtocol {
    func getForcasts() async throws -> [Forecast]
}

//class WeatherRepository: WeatherRepoProtocol {
//    func getForcasts() async throws -> [Forecast] {
//        let url = URL(string: "https://google.com")!
//        let (data, _) = try await URLSession.shared.data(from: url)
//        return try JSONDecoder().decode([Forecast].self, from: data)
//    }
//}
