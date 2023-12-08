//
//  IMG02.swift
//  StoryBoard
//
//  Created by User on 24/11/23.
//

import SwiftUI

//Imagem da tela Estendida02

struct IMG02: View{
    var body: some View{
        Image("im2")
            .resizable()
            .frame(width: 398, height: 300)
            .offset(x: -1, y: -222)
    }
}
