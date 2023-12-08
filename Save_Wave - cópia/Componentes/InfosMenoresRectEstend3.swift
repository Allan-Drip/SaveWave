//
//  InfosMenoresRectEstend3.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import SwiftUI
import MapKit

struct InfosMenoresRectEstend3: View {
    var local: String
    var data: String
    var hora: String

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "location.fill")
                    .foregroundColor(Color("cortexto"))

                Button(action: {
                    openPrainhaAquiraz()
                }) {
                    Text(local)
                        .font(.system(size: 17))
                        .foregroundColor(Color("cortexto"))
                        .bold()
                        .underline()
                }
            }
            .offset(x: -115, y: 96)

            HStack {
                Text(data)
                    .font(.system(size: 17))
                    .foregroundColor(Color("cortexto"))
                    .bold()

                Text(hora)
                    .font(.system(size: 17))
                    .foregroundColor(Color("cortexto"))
                    .bold()
            }
            .offset(x: 83, y: 77)
        }
    }

    private func openPrainhaAquiraz() {
        let latitude: CLLocationDegrees = -3.9199
        let longitude: CLLocationDegrees = -38.3869
        let cordenadas = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)

        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: cordenadas))
        mapItem.name = "Prainha do Aquiraz, Ceará"
        mapItem.openInMaps()
    }
}
