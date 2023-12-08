//
//  TeladeScrollar.swift
//  Save_Wave
//
//  Created by User on 10/11/23.
//

import SwiftUI

struct TeladeScrollar: View {
    var body: some View {
        
            ZStack{
                Color("CorDeFundo")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("parte6")
                        .offset(x: 15,y:-274)
                    
                }
                ScrollView{
                ZStack{
                    Rectangle()
                        .fill(Color("corteste"))
                        .cornerRadius(39)
                        .padding(.vertical, 89)
                        .padding(.horizontal, 35)
                        .offset(y:279)
                 
                }
            }
        }
    }
}
#Preview {
    TeladeScrollar()
        
}
