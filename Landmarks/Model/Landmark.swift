//
//  Landmark.swift
//  Landmarks
//
//  Created by aacode on 9/1/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    // Adding Codable conformance makes it easier to move data between the structure and a data file.
    //We'll rely on the Decodable component of the Codable protocol later in this section to read data from file.
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
        enum Category: String, CaseIterable, Codable {
            case lakes = "Lakes"
            case rivers = "Rivers"
            case mountains = "Mountains"
        }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var featureIamge: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude : coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
