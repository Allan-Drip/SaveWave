//
//  RectPeqEst02.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import SwiftUI

// Retângulo inferior da tela Estendida02
struct RectPeqEst02: View {
    @AppStorage("contador_est02") private var contador: Int = 5
    @State private var botaoClicado = false
    @State private var showAlert = false

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("fundobranco"))
                .cornerRadius(50)
                .padding(.vertical, 0)
                .padding(.horizontal, 56)
                .offset(y: 144)
            
            HStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 30, height: 30)
                
                Text("\(contador)")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                
                Button(action:  {
                    if !botaoClicado {
                        contador += 1
                        botaoClicado = true
                        showAlert = true
                    }
                })  {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Inscrição Realizada"),
                        message: Text("Sua inscrição foi realizada com sucesso."),
                        dismissButton: .default(Text("OK"))
                    )
                }
            }
            .offset(x: 1, y: 145)
        }
    }
}

struct RectPeqEst02_Previews: PreviewProvider {
    static var previews: some View {
        RectPeqEst02()
    }
}
