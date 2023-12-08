
//  CompElementos.swift
//  Save_Wave
//
//  Created by User on 21/11/23.


import Foundation
import SwiftUI

struct CompElementos: View {
    var text: String
    var data: String
    var horario: String

    var body: some View{
        HStack{
            Image(systemName: "location.fill")
                .foregroundColor(Color("cortexto"))
            Text (text)
                .font(.system(size: 17))
                .foregroundColor(Color("cortexto"))
                .bold()
        }
        .offset(x: -112, y:121)
        
        VStack{
            Label{
                Text ("Share")
            } icon:{
                Image(systemName: "square.and.arrow.up.circle")
                    .resizable()
                    .frame(width: 26, height: 26)
            }.offset(x: 108, y: 49)
            
            
            HStack{
                Text (data)
                    .font(.system(size: 17))
                    .foregroundColor(Color("cortexto"))
                    .bold()
                Text (horario)
                    .font(.system(size: 17))
                    .foregroundColor(Color("cortexto"))
                    .bold()
            }
            .offset(x: 83, y: 58)
            
        }
    }
}
