//
//  ContentView.swift
//  MacLandmarks
//
//  Created by aacode on 9/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
