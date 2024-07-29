//
//  HikeDetailScreen.swift
//  HikingApp
//
//  Created by Umesh Jangid on 28/07/24.
//

import SwiftUI

struct HikeDetailScreen: View {
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack(){
            Image(hike.image).resizable().aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        zoomed.toggle()
                    }
                }
            Text(hike.name).font(.title)
            Text("\(hike.miles.formatted()) miles").font(.subheadline)
            if let description = hike.description {
                Text(description).padding(10).font(.body)
            } else {
                Text("No description.").padding(20).font(.body)
            }
    
            Spacer(minLength: 0)
        }.navigationTitle(hike.name).navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        HikeDetailScreen(hike:  Hike(name: "Salmoberry Hills", image: "hiking1",miles: 30.05, description: nil))
    }
}
