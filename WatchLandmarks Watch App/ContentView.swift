//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by aacode on 9/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
