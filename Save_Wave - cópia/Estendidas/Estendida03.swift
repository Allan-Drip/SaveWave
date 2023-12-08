//
//  Estendida03.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import SwiftUI

struct Estendida03: View {
    var todayItem: Today

    var body: some View {
        ZStack {
            Color("fundoazul")
                .edgesIgnoringSafeArea(.all)
            IMG03()
            ZStack {
                RetGrande()
                VStack {
                    VStack {
                        InfosRectEstend03(title: "Décima terceira coleta no Aquiraz", texto: "A coleta na Prainha de Aquiraz é fundamental para manter a praia limpa e proteger a vida marinha. Além disso, contribui para o turismo sustentável e apoia a comunidade local.")
                    }
                    .offset(y:-75)
                    InfosMenoresRectEstend3(local: "Aquiraz", data: "31/10/2023", hora: "14:30")
                }
                RectPeqEst03()
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
                .offset(x: 108, y: 243) // Ajuste este offset conforme necessário
            }
        }
    }
}

struct Estendida03_Previews: PreviewProvider {
    static var previews: some View {
        Estendida03(todayItem: todayItens[0]) // Substitua o índice conforme necessário
            .previewInterfaceOrientation(.portrait)
    }
}
