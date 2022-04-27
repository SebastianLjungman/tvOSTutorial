//
//  ContentView.swift
//  tvTEST
//
//  Created by Sebastian Ljungman on 2022-04-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
