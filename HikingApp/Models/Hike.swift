//
//  Hike.swift
//  HikingApp
//
//  Created by Umesh Jangid on 28/07/24.
//

import Foundation

struct Hike : Identifiable, Hashable{
    let id = UUID()
    let name: String
    let image: String
    let miles: Double
    let description: String?
}
