//
//  RetPeq.swift
//  Save_Wave
//
//  Created by User on 21/11/23.
//

import Foundation
import SwiftUI
// Retângulo inferior da tela Estendida01
struct RetPeq: View{
    @State private var contador = 200
    var body: some View{
        ZStack{
            Rectangle()
                .fill(Color("fundobranco"))
                .cornerRadius(50)
                .padding(.vertical, 345)
                .padding(.horizontal, 56)
                .offset(y:144)
            HStack{
                Image(systemName:"person.crop.circle")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 30, height: 30)
                Text("\(contador)")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .padding()
                Button(action:  {
                    contador += 1
                    
                }) {
                    Image(systemName:"plus.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                }
            } .offset(x:1,y: 145)
            
        }
    }
}
#Preview{
    RetPeq()
}
