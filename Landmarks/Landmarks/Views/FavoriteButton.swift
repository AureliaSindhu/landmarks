//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by aacode on 9/1/25.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    // binding enables to read and write between a property that stores data and a view that displays and changes data
    
    var body: some View {
        Button {
            isSet.toggle( )
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}


#Preview {
    FavoriteButton(isSet: .constant(true))
}
