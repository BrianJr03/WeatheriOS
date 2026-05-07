//
//  Util.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/7/26.
//

let weatherIcons: [Int: String] = [
    0:  "sun.max",
    1:  "sun.min",
    2:  "cloud.sun",
    3:  "cloud",
    45: "cloud.fog",
    48: "cloud.fog",
    51: "cloud.drizzle",
    53: "cloud.drizzle",
    61: "cloud.rain",
    63: "cloud.rain",
    65: "cloud.heavyrain",
    71: "snowflake",
    73: "snowflake",
    75: "snowflake",
    80: "cloud.sun.rain",
    81: "cloud.rain",
    95: "cloud.bolt.rain",
    99: "cloud.bolt.rain"
]

let weatherDescriptions: [Int: String] = [
    0:  "Clear Sky",
    1:  "Mainly Clear",
    2:  "Partly Cloudy",
    3:  "Overcast",
    45: "Foggy",
    48: "Icy Fog",
    51: "Light Drizzle",
    53: "Moderate Drizzle",
    55: "Dense Drizzle",
    61: "Light Rain",
    63: "Moderate Rain",
    65: "Heavy Rain",
    71: "Light Snow",
    73: "Moderate Snow",
    75: "Heavy Snow",
    80: "Showers",
    81: "Moderate Showers",
    82: "Violent Showers",
    95: "Thunderstorm",
    99: "Thunderstorm with Hail"
]

func getClearWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Not a",     outlineWord: nil),
        WeatherLine(text: "fucking",   outlineWord: "fucking"),
        WeatherLine(text: "cloud",     outlineWord: nil),
        WeatherLine(text: "in sight.", outlineWord: nil)
    ]
}

func getMainlyClearWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Mostly", outlineWord: nil),
        WeatherLine(text: "clear",  outlineWord: nil),
        WeatherLine(text: "as",     outlineWord: nil),
        WeatherLine(text: "hell.",  outlineWord: nil)
    ]
}

func getPartlyCloudyWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Some",       outlineWord: nil),
        WeatherLine(text: "annoying",   outlineWord: nil),
        WeatherLine(text: "ass",     outlineWord: "ass"),
        WeatherLine(text: "clouds out there.", outlineWord: nil)
    ]
}

func getOvercastWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Grey",        outlineWord: nil),
        WeatherLine(text: "depressing",  outlineWord: nil),
        WeatherLine(text: "shit",        outlineWord: "shit"),
        WeatherLine(text: "everywhere.", outlineWord: nil)
    ]
}

func getFoggyWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Can't see",  outlineWord: nil),
        WeatherLine(text: "a damn",     outlineWord: "damn"),
        WeatherLine(text: "thing",      outlineWord: nil),
        WeatherLine(text: "out there.", outlineWord: nil)
    ]
}

func getDrizzleWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Annoying", outlineWord: nil),
        WeatherLine(text: "little",   outlineWord: nil),
        WeatherLine(text: "bitch",    outlineWord: "bitch"),
        WeatherLine(text: "drizzle.", outlineWord: nil)
    ]
}

func getRainingWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "It's",    outlineWord: nil),
        WeatherLine(text: "fucking", outlineWord: "fucking"),
        WeatherLine(text: "raining", outlineWord: nil),
        WeatherLine(text: "now.",    outlineWord: nil)
    ]
}

func getHeavyRainWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Absolute", outlineWord: nil),
        WeatherLine(text: "shit",     outlineWord: "shit"),
        WeatherLine(text: "storm",    outlineWord: nil),
        WeatherLine(text: "of rain.", outlineWord: nil)
    ]
}

func getSnowWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Cold",     outlineWord: nil),
        WeatherLine(text: "as",       outlineWord: nil),
        WeatherLine(text: "balls",    outlineWord: "balls"),
        WeatherLine(text: "outside.", outlineWord: nil)
    ]
}

func getHeavySnowWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Buried",  outlineWord: nil),
        WeatherLine(text: "in",      outlineWord: nil),
        WeatherLine(text: "fucking", outlineWord: "fucking"),
        WeatherLine(text: "snow.",   outlineWord: nil)
    ]
}

func getShowersWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "On and Off", outlineWord: nil),
        WeatherLine(text: "bullshit", outlineWord: "bullshit"),
        WeatherLine(text: "showers.", outlineWord: nil)
    ]
}

func getThunderstormWeatherLines() -> [WeatherLine] {
    return [
        WeatherLine(text: "Holy",      outlineWord: nil),
        WeatherLine(text: "shit",      outlineWord: "shit"),
        WeatherLine(text: "thunder",   outlineWord: nil),
        WeatherLine(text: "incoming.", outlineWord: nil)
    ]
}

func getWeatherLines(for weatherCode: Int) -> [WeatherLine] {
    switch weatherCode {
    case 0:          return getClearWeatherLines()
    case 1:          return getMainlyClearWeatherLines()
    case 2:          return getPartlyCloudyWeatherLines()
    case 3:          return getOvercastWeatherLines()
    case 45, 48:     return getFoggyWeatherLines()
    case 51, 53, 55: return getDrizzleWeatherLines()
    case 61, 63:     return getRainingWeatherLines()
    case 65:         return getHeavyRainWeatherLines()
    case 71, 73:     return getSnowWeatherLines()
    case 75:         return getHeavySnowWeatherLines()
    case 80, 81, 82: return getShowersWeatherLines()
    case 95, 99:     return getThunderstormWeatherLines()
    default:         return getRainingWeatherLines()
    }
}

let weatherSarcasm: [Int: String] = [
    0:  "Wow, actual sunshine.",
    1:  "Enjoy it while it lasts.",
    2:  "Some clouds. Thrilling.",
    3:  "Congrats, it's cloudy.",
    45: "Can't see shit out there.",
    48: "Foggy and icy. Great combo.",
    51: "Rain.",
    53: "Still annoying.",
    55: "Peak misery.",
    61: "Hope you like fun weather.",
    63: "Shocking, right?",
    65: "You're gonna need a boat.",
    71: "Light snow. Adorable.",
    73: "Good luck.",
    75: "Antarctica weather.",
    80: "Chat, spam 'L weather'",
    81: "Stay inside.",
    82: "Nature hates you.",
    95: "You & Thor got beef.",
    99: "Just stay in bed."
]

func getWeatherSarcasm(for weatherCode: Int) -> String {
    return weatherSarcasm[weatherCode] ?? "Weather's doing something. Who knows."
}
