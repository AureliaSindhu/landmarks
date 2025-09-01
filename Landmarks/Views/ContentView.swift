//
//  ContentView.swift
//  Landmarks
//
//  Created by aacode on 8/31/25.
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
