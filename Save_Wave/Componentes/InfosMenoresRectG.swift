import SwiftUI
import MapKit

struct InfosMenoresRectG: View {
    var local: String
    var data: String
    var hora: String

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "location.fill")
                    .foregroundColor(Color("cortexto"))

                Button(action: {
                    openPraiaIracema()
                }) {
                    Text(local)
                        .font(.system(size: 17))
                        .foregroundColor(Color("cortexto"))
                        .bold()
                        .underline()
                }
            }
            .offset(x: -96, y: 110)

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
            .offset(x: 80, y: 90)
        }
    }

    private func openPraiaIracema() {
        let latitude: CLLocationDegrees = -3.7172
        let longitude: CLLocationDegrees = -38.5433
        let cordenadas = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)

        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: cordenadas))
        mapItem.name = "Praia de Iracema, Ceará"
        mapItem.openInMaps()
    }
}

