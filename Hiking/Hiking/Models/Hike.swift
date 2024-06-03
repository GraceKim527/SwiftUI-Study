//
//  Hike.swift
//  Hiking
//
//  Created by 김은혜 on 6/3/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
