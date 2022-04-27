//
//  LandmarkDetail.swift
//  tvTEST
//
//  Created by Sebastian Ljungman on 2022-04-26.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    var body: some View {
        ScrollView {
            //Wrapped MapView in VStack to disable map focus, but still allow scrolling to top of view
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
                    .focusable(false)
            }
            .focusable()
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                    .focusable()
                Text(landmark.description)
                    .focusable()
                Text(landmark.description)
                    .focusable()
            }
            .padding()
            //.focusable()
        }
        .navigationTitle(landmark.name)
        //        .navigationBarTitleDisplayMode(.inline) //Unavailable in tvOS
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject((modelData))
    }
}
