//
//  Location.swift
//  Weatherly
//
//  Created by 김은혜 on 6/9/24.
//

import Foundation

struct Location: Decodable {
    let name: String
    let lat: Double
    let lon: Double
}
