//
//  InfosMenoresRectEstend2.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import SwiftUI
import MapKit

struct InfosMenoresRectEstend2: View {
    var local: String
    var data: String
    var hora: String

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "location.fill")
                    .foregroundColor(Color("cortexto"))

                Button(action: {
                    openCanoaQuebrada()
                }) {
                    Text(local)
                        .font(.system(size: 17))
                        .foregroundColor(Color("cortexto"))
                        .bold()
                        .underline()
                }
            }
            .offset(x: -95, y: 140)

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
            .offset(x: 83, y: 120)
        }
    }

    private func openCanoaQuebrada() {
        let latitude: CLLocationDegrees = -4.521389
        let longitude: CLLocationDegrees = -37.706111
        let cordenadas = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)

        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: cordenadas))
        mapItem.name = "Praia de Canoa Quebrada, Ceará"
        mapItem.openInMaps()
    }
}
