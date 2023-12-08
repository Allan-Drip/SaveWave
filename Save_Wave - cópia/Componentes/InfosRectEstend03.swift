//
//  InfosRectEstend03.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import Foundation
import SwiftUI
// Informações extras sobre o evento contidas no retângulo maior da tela Estendida03. Elas são menores e são azuis.

struct InfosRectEstend03: View{
    
    var title: String
    var texto: String
    var body: some View{
        
        VStack{
            Text(title)
                .offset(x: -10, y:148)
                .foregroundColor(Color("fundoazul"))
                .bold()
                .font(.system(size: 30))
                .offset(x: -1, y:15)
            
            Text(texto)
                .font(.system(size: 18))
                .padding(.vertical, 80)
                .padding(.horizontal, 35)
                .offset(x: 3, y: 75)
            
        }
        .offset(x: -1, y: 75)
        .offset(x: -1, y: 75)
    }
}
