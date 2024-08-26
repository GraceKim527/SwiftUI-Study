//
//  NumberFormatter+Extensions.swift
//  MVExample
//
//  Created by 김은혜 on 8/26/24.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
