
//
//  Estendida02.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import SwiftUI

struct Estendida02: View {
    var todayItem: Today

    var body: some View {
        ZStack {
            Color("fundoazul")
                .edgesIgnoringSafeArea(.all)

            IMG02()

            ZStack {
                RetGrande()
                ZStack {
                    VStack {
                        VStack {
                            InfosRectEstend2(title: "Juntos pela coleta de Canoa Quebrada", texto: "Não deixe que o lixo prejudique a magia de Canoa Quebrada. Sua participação é essencial para proteger este tesouro natural!")
                        }
                        .offset(y:6)
                        InfosMenoresRectEstend2(local: "Canoa Quebrada", data: "22/10/2023", hora: "08:00")
                    }
                }.offset(x:1, y:-30)

                RectPeqEst02()
                    .offset(y:185)
                    .padding(.vertical, 320)
                    .padding(.horizontal, 40)

                HStack {
                    Button(action: {
                        let shareText = "Venha participar da nossa ação \(self.todayItem.logoTitle)"
                        let activityViewController = UIActivityViewController(activityItems: [shareText], applicationActivities: nil)
                        UIApplication.shared.windows.first?.rootViewController?.present(activityViewController, animated: true, completion: nil)
                    }) {
                        HStack {
                            Image(systemName: "square.and.arrow.up.circle")
                                .resizable()
                                .frame(width: 26, height: 26)
                            Text("Share")
                        }
                        .padding()
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                    }
                }
                .offset(x: 108, y: 220) // Ajuste este offset conforme necessário
            }
        }
    }
}

struct Estendida02_Previews: PreviewProvider {
    static var previews: some View {
        Estendida02(todayItem: todayItens[2])
            .previewInterfaceOrientation(.portrait)
    }
}
