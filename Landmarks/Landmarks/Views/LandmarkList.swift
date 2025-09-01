//
//  LandmarkList.swift
//  Landmarks
//
//  Created by aacode on 9/1/25.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle ("Show Favorites Only", isOn: $showFavoritesOnly)
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark:  landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            .animation(.default, value: filteredLandmarks)
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
