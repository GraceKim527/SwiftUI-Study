//
//  StoreModel.swift
//  MVExample
//
//  Created by 김은혜 on 8/26/24.
//

import Foundation

class StoreModel: ObservableObject {
    
    let webservice: Webservice
    @Published var products: [Product] = []
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func populateProducts() async throws {
        
        products = try await webservice.getProducts()
        
    }
    
}
