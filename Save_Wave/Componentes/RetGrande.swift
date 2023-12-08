//
//  RetGrande.swift
//  Save_Wave
//
//  Created by User on 22/11/23.
//

import Foundation
import SwiftUI
//Retângulo grande e branco
struct RetGrande: View{
    var body: some View{
        
        Rectangle()
            .fill(Color("fundobranco"))
            .cornerRadius(10)
            .padding(.vertical, 200)
            .padding(.horizontal, 20)
            .offset(y:144)
    }
}
//#Preview{
//    RetGrande()
//}

