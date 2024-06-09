//
//  Weather.swift
//  Weatherly
//
//  Created by 김은혜 on 6/9/24.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
}
