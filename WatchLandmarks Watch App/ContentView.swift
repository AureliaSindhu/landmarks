//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by aacode on 9/2/25.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task{
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .badge, .sound]
                )
            }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
