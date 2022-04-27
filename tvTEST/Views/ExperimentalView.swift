//
//  ExperimentalView.swift
//  Landmarks
//
//  Created by Sebastian Ljungman on 2022-04-26.
//

import SwiftUI

struct ExperimentalView: View {
    @State var count: Int = 0
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                ForEach(0..<50) {
                    Text("Row \($0)")
                        .frame(height: 100)
                        .focusable()
                }
            }
        }
//        VStack{
//        Text("Count is " + String(count))
//        
//        Button("Increment") {
//            count += 1
//        }
//        Button("Decrement") {
//            count -= 1
//        }
//        }
    }
}

struct ExperimentalView_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentalView()
    }
}
