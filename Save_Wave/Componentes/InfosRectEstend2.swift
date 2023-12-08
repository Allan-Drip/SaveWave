//
//  InfosRectEstend2.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import Foundation
import SwiftUI

struct InfosRectEstend2: View{
    // Informações principais sobre o evento da tela Estendida02
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
    }
}

