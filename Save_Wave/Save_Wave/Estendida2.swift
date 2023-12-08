//
//  Estendida2.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import Foundation
import SwiftUI
struct Estendida2: View {
    
    var body: some View {
        
        ZStack{
            
            Color("CorDeFundo")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Image("im2")
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
                        Text("Juntos pela Coleta de Canoa Quebrada")
                            .offset(x: -10, y:148)
                            .foregroundColor(Color("CorDeFundo"))
                            .bold()
                            .font(.system(size: 30))
                            .offset(x: -1, y:15)
                        
                        Text("Não deixe que o lixo prejudique a magia de Canoa Quebrada. Sua participação é essencial para proteger este tesouro natural! ")
                            .font(.system(size: 18))
                            .padding(.vertical, 80)
                            .padding(.horizontal, 35)
                            .offset(x: 3, y: 75)
                        
                    }
                    .offset(x: -1, y: 75)
                    
                    HStack{
                        Image(systemName: "location.fill")
                            .foregroundColor(Color("cortexto"))
                        Text ("Canoa Quebrada")
                            .font(.system(size: 17))
                            .foregroundColor(Color("cortexto"))
                            .bold()
                        
                    }
                    .offset(x: -79, y:109)
                    
                    VStack{
                        Label{
                            Text ("Share")
                        } icon:{
                            Image(systemName: "square.and.arrow.up.circle")
                                .resizable()
                                .frame(width: 26, height: 26)
                        }.offset(x: 108, y: 29)
                        
                        
                        HStack{
                            Text ("02/12/2023")
                                .font(.system(size: 17))
                                .foregroundColor(Color("cortexto"))
                                .bold()
                            Text ("16:00")
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
    Estendida2()
}
