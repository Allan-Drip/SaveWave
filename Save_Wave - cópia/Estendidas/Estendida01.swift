//
//  Estendida01.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//
import SwiftUI

struct Estendida01: View {
    var todayItem: Today
    
    var body: some View {
        ZStack {
            Color("fundoazul")
                .edgesIgnoringSafeArea(.all)

            IMG01()

            ZStack {
                RetGrande()
                VStack {
                    VStack {
                        InfoRectG(title: "Juntos por uma Praia de Iracema mais limpa", texto: "Sua participação não apenas melhora o ambiente, mas também enriquece sua vida e ajuda a construir um futuro mais saudável para as próximas gerações.")
                    }
                    .offset(y:6)
                    InfosMenoresRectG(local: "Praia de Iracema", data: "02/12/2023", hora: "16:00")
                }
            }.offset(x:1, y:-30)

            RectPeqEst01()
                .offset(y:155)
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
            .offset(x: 108, y: 200)
        }
    }
}

struct Estendida01_Previews: PreviewProvider {
    static var previews: some View {
        Estendida01(todayItem: todayItens[0]) // Substitua o índice conforme necessário
    }
}
