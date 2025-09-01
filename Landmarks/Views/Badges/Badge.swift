//
//  Badge.swift
//  Landmarks
//
//  Created by aacode on 9/1/25.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 0))
            .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            badgeSymbols
        }
    }
}

#Preview {
    Badge()
}
