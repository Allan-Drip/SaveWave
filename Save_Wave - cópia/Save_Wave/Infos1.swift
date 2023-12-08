//
//  Infos1.swift
//  Save_Wave
//
//  Created by User on 10/11/23.
//

import SwiftUI

struct Infos1: View {
    var body: some View {
        
        ZStack{
            Rectangle()
                .fill(Color("fundobranco"))
                .cornerRadius(13)
                .padding(.vertical, 319)
                .padding(.horizontal, 30)
            VStack (spacing: 5) {
                Text("Juntos por uma Prainha mais limpa!")
                    .offset(x: -2)
                    .bold()
                    .font(.system(size:19))
                
                    HStack {
                        Image("coleta1")
                            .resizable()
                            .frame(width:155, height: 78)
                            .cornerRadius(10
                            )
                            .offset(x: -37, y: 1)
                        VStack{
                            Text("31/20/2023")
                                .font(.system(size:14))
                                .offset(x: -38, y: -9)
                                .bold()
                           
                            Text("14:00")
                                .font(.system(size:14))
                                .offset(x: -57, y: -5)
                                .bold()
                            HStack{
                                Image(systemName: "location.fill")
                                    .offset(x: -39, y: 2)
                                Text("Prainha")
                                    .offset(x: -45, y: 2)
                                    .font(.system(size:14))
                                
                            }
                            
                            
                        }
                    }
                }
                
            }
        }
    }


#Preview {
    Infos1()
}
