//
//  RectPrinc.swift
//  Save_Wave
//
//  Created by User on 21/11/23.
//

import Foundation
import SwiftUI
struct RectPrinc: View{
    
    var body: some View{
        Rectangle()
            .fill(Color("fundobranco"))
            .cornerRadius(10)
            .padding(.vertical, 235)
            .padding(.horizontal, 20)
            .offset(y:144)
    }
}
