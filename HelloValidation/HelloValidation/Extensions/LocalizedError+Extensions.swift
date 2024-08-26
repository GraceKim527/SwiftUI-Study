//
//  LocalizedError+Extensions.swift
//  HelloValidation
//
//  Created by 김은혜 on 8/26/24.
//

import Foundation

extension LocalizedError {
    var id: Int {
        localizedDescription.hashValue
    }
}
