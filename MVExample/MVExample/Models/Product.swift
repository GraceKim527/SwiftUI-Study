//
//  Product.swift
//  MVExample
//
//  Created by 김은혜 on 8/26/24.
//

import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
}
