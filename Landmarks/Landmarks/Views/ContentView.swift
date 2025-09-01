//
//  ContentView.swift
//  Landmarks
//
//  Created by aacode on 8/31/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading){
                Text("Tutle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                
                Divider()
                
                Text("About Turle Rock")
                    .font(.title2)
                
                Text("description")
            }
            .padding()
            .font(.subheadline)
            .foregroundStyle(.secondary)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
