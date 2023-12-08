//
//  IMG03.swift
//  StoryBoard
//
//  Created by User on 24/11/23.
//

import SwiftUI

//Imagem da tela Estendida03

struct IMG03: View{
    var body: some View{
        Image("im3")
            .resizable()
            .frame(width: 398, height: 300)
            .offset(x: -1, y: -222)
    }
}

