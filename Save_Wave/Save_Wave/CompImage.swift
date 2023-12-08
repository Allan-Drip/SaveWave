//
//  CompImage.swift
//  Save_Wave
//
//  Created by User on 21/11/23.
//

import Foundation
import SwiftUI
struct CompImage: View{
    var image : String
    var titulo: String
    var texto: String
    var body: some View{
        Color("CorDeFundo")
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        Image(image)
            .resizable()
            .frame(width: 398, height: 300)
            .offset(x: -1, y: -222)
        VStack{
            Text(titulo)
                .offset(y:140)
                .foregroundColor(Color("CorDeFundo"))
                .bold()
                .font(.system(size: 30))
                .offset(x: -1, y: 9)
            
            Text(texto)
                .font(.system(size: 18))
                .padding(.vertical, 80)
                .padding(.horizontal, 35)
                .offset(x: -1, y: 62)
            
        }
        .offset(x: -1, y: 51)
    }
}
