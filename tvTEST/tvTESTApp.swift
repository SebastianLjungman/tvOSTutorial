//
//  tvTESTApp.swift
//  tvTEST
//
//  Created by Sebastian Ljungman on 2022-04-22.
//

import SwiftUI

@main
struct tvTESTApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            //ExperimentalView()
            ContentView()
                .environmentObject(modelData)
        }
    }
}
