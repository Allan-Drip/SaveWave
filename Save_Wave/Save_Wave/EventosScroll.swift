//
//  EventosScroll.swift
//  OnUs-Eventos
//
//  Created by user on 31/10/23.
//

import Foundation
import SwiftUI


struct EventosScroll: View{
        
    let imagename: String
    
    init(_ imagename: String){
        self.imagename = imagename
    }
    
var body: some View {
        
    ZStack{
            VStack{
                Image(imagename)
                    .resizable()
                    .frame(width: 350, height: 250)
                    .cornerRadius(10)
                
            }
           
            
        }
    
    

            
            
        }
    }

struct EventosScroll_Previews: PreviewProvider{
    
    static var previews: some View{
        EventosScroll("coleta1")
        EventosScroll("coleta2")
        EventosScroll("coleta3")

    }
    
}
