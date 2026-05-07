//
//  WeatherLine.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/7/26.
//
import SwiftUI

struct WeatherLine: Identifiable {
    let id = UUID()
    let text: String
    let outlineWord: String?
    let size: CGFloat = 80
}
