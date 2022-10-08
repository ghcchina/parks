//
//  SaySomethingApp.swift
//  SaySomething
//
//  Created by  Hongchao Guan on 9/15/22.
//

import SwiftUI

@main
struct SaySomethingApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
