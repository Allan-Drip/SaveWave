//
//  Estendida3.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import Foundation
import SwiftUI
struct Estendida3: View {
    
    var body: some View {
        
        ZStack{
            
            Color("CorDeFundo")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Image("im3")
                .resizable()
                .frame(width: 398, height: 300)
                .offset(x: -1, y: -222)
            ZStack{
                Rectangle()
                    .fill(Color("fundobranco"))
                    .cornerRadius(10)
                    .padding(.vertical, 235)
                    .padding(.horizontal, 20)
                    .offset(y:144)
                VStack{
                    VStack{
                        Text("Décima terceira coleta no Aquiraz")
                            .offset(x: -10, y:148)
                            .foregroundColor(Color("CorDeFundo"))
                            .bold()
                            .font(.system(size: 30))
                            .offset(x: -1, y:15)
                        
                        Text("A coleta na Prainha de Aquiraz é fundamental para manter a praia limpa e proteger a vida marinha. Além disso, contribui para o turismo sustentável e apoia a comunidade local.")
                            .font(.system(size: 18))
                            .padding(.vertical, 80)
                            .padding(.horizontal, 35)
                            .offset(x: 3, y: 75)
                        
                    }
                    .offset(x: -1, y: 75)
                    
                    HStack{
                        Image(systemName: "location.fill")
                            .foregroundColor(Color("cortexto"))
                        Text ("Aquiraz")
                            .font(.system(size: 17))
                            .foregroundColor(Color("cortexto"))
                            .bold()
                        
                        
                    }
                    .offset(x: -115, y:106)
                    
                    VStack{
                        Label{
                            Text ("Share")
                        } icon:{
                            Image(systemName: "square.and.arrow.up.circle")
                                .resizable()
                                .frame(width: 26, height: 26)
                        }.offset(x: 108, y: 39)
                        
                        
                        HStack{
                            Text ("12/10/2023")
                                .font(.system(size: 17))
                                .foregroundColor(Color("cortexto"))
                                .bold()
                            
                            Text ("14:30")
                                .font(.system(size: 17))
                                .foregroundColor(Color("cortexto"))
                                .bold()
                        }
                        .offset(x: 83, y: 45)
                        
                    }
                }
                RetPeq()
                    .offset(x: 1, y: 207)
            }
            .offset(x: 1, y: -27)
            
        }
    }
}
//}
#Preview {
    Estendida3()
}
