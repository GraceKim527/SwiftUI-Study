//
//  MVExampleApp.swift
//  MVExample
//
//  Created by 김은혜 on 8/17/24.
//

import SwiftUI

@main
struct MVExampleApp: App {
    
    // @StateObject로 선언된 storeModel은 해당 뷰의 상태를 관리하는 객체로, 상태가 변경될 때마다 뷰를 자동으로 업데이트한다.
    // 데이터 모델을 사용하면서도 상태 관리까지 관리될 수 있음.
    @StateObject private var storeModel = StoreModel(webservice: Webservice())
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(storeModel) // ContentView의 그 하위까지 전역적으로 모델을 사용하겠다는 뜻
        }
    }
}
