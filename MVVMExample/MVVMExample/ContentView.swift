//
//  ContentView.swift
//  MVVMExample
//
//  Created by 김은혜 on 8/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ProductListViewModel(webservice: Webservice())
    
    
    var body: some View {
        List(vm.products) { product in
            Text(product.title)
        }.task {
            await vm.populateProducts()
        }
    }
}

#Preview {
    ContentView()
}
