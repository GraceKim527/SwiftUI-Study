//
//  ValidationSummaryView.swift
//  HelloValidation
//
//  Created by 김은혜 on 8/26/24.
//

import SwiftUI

struct ValidationSummaryView: View {
    
    let errors: [LocalizedError]
    
    var body: some View {
        ForEach(errors, id: \.id) { error in
            Text(error.localizedDescription)
        }
    }
}

#Preview {
    ValidationSummaryView(errors: [])
}
