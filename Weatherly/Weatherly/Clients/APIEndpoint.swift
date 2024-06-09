//
//  APIEndpoint.swift
//  Weatherly
//
//  Created by 김은혜 on 6/9/24.
//

import Foundation

enum APIEndpoint {
    
    static let baseURL = "https://api.openweathermap.org"
    
    case coordinatesByLocationName(String)
    case weatherByLatLon(Double, Double)
    
    private var path: String {
        switch self {
            case .coordinatesByLocationName(let city):
                return "/geo/1.0/direct?q=\(city)&appid=\(Constants.Keys.weatherAPIKey)"
            case .weatherByLatLon(let lat, let lon):
                return "/data/3.0/weather?lat=\(lat)&lon=\(lon)&appid=\(Constants.Keys.weatherAPIKey)"
        }
    }
    
    static func endpointURL(for endpoint: APIEndpoint) -> URL {
        let endpointPath = endpoint.path
        return URL(string: baseURL + endpointPath)!
    }
}
