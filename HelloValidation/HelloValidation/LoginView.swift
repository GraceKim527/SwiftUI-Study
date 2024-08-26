//
//  ContentView.swift
//  HelloValidation
//
//  Created by 김은혜 on 8/26/24.
//

import SwiftUI

enum LoginError: LocalizedError, Identifiable {
    case emailEmpty
    case invalidEmail
    case passwordEmpty
    
    var id: Int {
        hashValue
    }
    
    var errorDescription: String? {
        switch self {
        case .emailEmpty:
            return "Email cannot be empty!"
        case .invalidEmail:
            return "Eamil is not in correct format"
        case .passwordEmpty:
            return "Password cannot be empty"
        }
    }
}



struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errors: [LoginError] = []
    
    var isValid: Bool {
        
        errors.removeAll()
        
        if email.isEmpty {
            errors.append(.emailEmpty)
        } else if !email.isValidEmail {
            errors.append(.invalidEmail)
        }
        
        if password.isEmpty {
            errors.append(.passwordEmpty)
        }
        
        return errors.isEmpty
    }
    
    var body: some View {
        Form {
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            
            SecureField("Password", text: $password)
            Button("Login") {
                if isValid {
                    print("submit the form")
                }
            }
            ValidationSummaryView(errors: errors)
        }
    }
}

#Preview {
    LoginView()
}
