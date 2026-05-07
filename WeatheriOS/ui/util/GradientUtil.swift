//
//  GradientUtil.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/7/26.
//
import SwiftUI

private let gradientOpacityTopLeft: CGFloat    = 0.1
private let gradientOpacityTopMid: CGFloat     = 0.3
private let gradientOpacityTopRight: CGFloat   = 0.7
private let gradientOpacityMidLeft: CGFloat    = 0.1
private let gradientOpacityMidMid: CGFloat     = 0.3
private let gradientOpacityMidRight: CGFloat   = 0.5
private let gradientOpacityBotRight: CGFloat   = 0.3

func rainGradient() -> some View {
    weatherMeshGradient(colors: [
        .blue.opacity(gradientOpacityTopLeft), .blue.opacity(gradientOpacityTopMid), .blue.opacity(gradientOpacityTopRight),
        .blue.opacity(gradientOpacityMidLeft), .blue.opacity(gradientOpacityMidMid), .blue.opacity(gradientOpacityMidRight),
        .white, .white, .blue.opacity(gradientOpacityBotRight)
    ])
}

func sunnyGradient() -> some View {
    weatherMeshGradient(colors: [
        .yellow.opacity(gradientOpacityTopLeft), .yellow.opacity(gradientOpacityTopMid), .orange.opacity(gradientOpacityTopRight),
        .yellow.opacity(gradientOpacityMidLeft), .yellow.opacity(gradientOpacityMidMid), .orange.opacity(gradientOpacityMidRight),
        .white, .white, .orange.opacity(gradientOpacityBotRight)
    ])
}

func snowGradient() -> some View {
    weatherMeshGradient(colors: [
        .cyan.opacity(gradientOpacityTopLeft), .cyan.opacity(gradientOpacityTopMid), .cyan.opacity(gradientOpacityTopRight),
        .cyan.opacity(gradientOpacityMidLeft), .cyan.opacity(gradientOpacityMidMid), .cyan.opacity(gradientOpacityMidRight),
        .white, .white, .cyan.opacity(gradientOpacityBotRight)
    ])
}

func fogGradient() -> some View {
    weatherMeshGradient(colors: [
        .gray.opacity(gradientOpacityTopLeft), .gray.opacity(gradientOpacityTopMid), .gray.opacity(gradientOpacityTopRight),
        .gray.opacity(gradientOpacityMidLeft), .gray.opacity(gradientOpacityMidMid), .gray.opacity(gradientOpacityMidRight),
        .white, .white, .gray.opacity(gradientOpacityBotRight)
    ])
}

func thunderstormGradient() -> some View {
    weatherMeshGradient(colors: [
        .purple.opacity(gradientOpacityTopLeft), .purple.opacity(gradientOpacityTopMid), .purple.opacity(gradientOpacityTopRight),
        .purple.opacity(gradientOpacityMidLeft), .purple.opacity(gradientOpacityMidMid), .purple.opacity(gradientOpacityMidRight),
        .white, .white, .purple.opacity(gradientOpacityBotRight)
    ])
}

func drizzleGradient() -> some View {
    weatherMeshGradient(colors: [
        .teal.opacity(gradientOpacityTopLeft), .teal.opacity(gradientOpacityTopMid), .teal.opacity(gradientOpacityTopRight),
        .teal.opacity(gradientOpacityMidLeft), .teal.opacity(gradientOpacityMidMid), .teal.opacity(gradientOpacityMidRight),
        .white, .white, .teal.opacity(gradientOpacityBotRight)
    ])
}

func overcastGradient() -> some View {
    weatherMeshGradient(colors: [
        .gray.opacity(gradientOpacityTopLeft), .gray.opacity(gradientOpacityTopMid), .gray.opacity(gradientOpacityTopRight),
        .gray.opacity(gradientOpacityMidLeft), .gray.opacity(gradientOpacityMidMid), .gray.opacity(gradientOpacityMidRight),
        .white, .white, .gray.opacity(gradientOpacityBotRight)
    ])
}

func weatherMeshGradient(colors: [Color]) -> some View {
    MeshGradient(
        width: 3,
        height: 3,
        points: [
            .init(0, 0), .init(0.5, 0), .init(1, 0),
            .init(0, 0.5), .init(0.5, 0.5), .init(1, 0.5),
            .init(0, 1), .init(0.5, 1), .init(1, 1)
        ],
        colors: colors
    )
    .ignoresSafeArea()
}

func getWeatherGradient(for weatherCode: Int) -> some View {
    switch weatherCode {
    case 0, 1:          return AnyView(sunnyGradient())
    case 2, 3:          return AnyView(overcastGradient())
    case 45, 48:        return AnyView(fogGradient())
    case 51, 53, 55:    return AnyView(drizzleGradient())
    case 61, 63, 65:    return AnyView(rainGradient())
    case 71, 73, 75:    return AnyView(snowGradient())
    case 80, 81, 82:    return AnyView(rainGradient())
    case 95, 99:        return AnyView(thunderstormGradient())
    default:            return AnyView(overcastGradient())
    }
}
