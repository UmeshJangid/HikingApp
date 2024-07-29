//
//  ContentView.swift
//  HikingApp
//
//  Created by Umesh Jangid on 28/07/24.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [
        Hike(name: "Jonathan Dickinson State Park", image: "hiking1",miles: 30.05, description: "Jonathan Dickinson State Park is a Florida State Park and historic site located in Martin County, Florida, between Hobe Sound and Tequesta. The park includes the Elsa Kimbell Environmental Education and Research Center and a variety of natural habitats: sand pine scrub, pine flatwoods, mangroves, and river swamps. The Loxahatchee River, designated a National Wild and Scenic River in 1985 (the first in Florida), runs through the park. The park is also along the Ocean to Lake Trail. The park is at 16450 S.E. Federal Highway, Hobe Sound. The park is well known for its Camp Murphy Mountain Bike Trails"),
        Hike(name: "Loxahatchee River ", image: "hiking2",miles: 30.05, description: "The Loxahatchee River (Seminole for river of turtles)[1] is a 7.6 mile river[2] near the southeast coast of Florida. It is a National Wild and Scenic River, one of only two in the state,[1] and received its federal designation on May 17, 1985. The source of the Loxahatchee River is in Riverbend Park on the south side of Indiantown Road about 1.5 miles west of I-95 and Florida's Turnpike in Jupiter, Florida. The Loxahatchee River flows out of the Jupiter Inlet and into the Atlantic Ocean. This river was the inspiration for Florida film producer Elam Stoltzfus' 2005 project Our Signature: the Wild and Scenic Loxahatchee River, a film done in conjunction with the Loxahatchee River Preservation Initiative.[3]"),
        Hike(name: "St. Johns River ", image: "hiking3",miles: 30.05, description: "The St. Johns River (Spanish: Río San Juan) is the longest river in the U.S. state of Florida and it is the most significant one for commercial and recreational use.[note 1] At 310 miles (500 km) long, it flows north and winds through or borders twelve counties. The drop in elevation from headwaters to mouth is less than 30 feet (9 m); like most Florida waterways, the St. Johns has a very slow flow speed of 0.3 mph (0.13 m/s), and is often described as.[2]"),
       
        Hike(name: "Harry Moutains", image: "hiking2",miles: 30.05, description: nil),
        
        Hike(name: "Volcano Moutains", image: "hiking1",miles: 30.05, description: nil),
        
        Hike(name: "Docker Hills", image: "hiking3", miles: 30.05, description: nil)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes").navigationDestination(for: Hike.self){ hike in
                HikeDetailScreen(hike: hike)
            }
        }
    }
    
    
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    let hike: Hike
    var body: some View {
        HStack {
            Image(hike.image).resizable().aspectRatio(contentMode: .fit).clipShape(RoundedRectangle(cornerRadius: 10.0)).frame(width: 100)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
