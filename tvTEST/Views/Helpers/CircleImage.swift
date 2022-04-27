//
//  CircleImage.swift
//  tvTEST
//
//  Created by Sebastian Ljungman on 2022-04-22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(.gray, lineWidth: 4))
            .shadow(color: .white, radius: 7, x: 10, y: 2)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
