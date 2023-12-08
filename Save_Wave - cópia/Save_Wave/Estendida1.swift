
import SwiftUI

struct Estendida1: View {
    
    var body: some View {
        
        ZStack{
            
            Color("CorDeFundo")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Image("im1")
                .resizable()
                .frame(width: 398, height: 300)
                .offset(x: -1, y: -222)
            ZStack{
                Rectangle()
                    .fill(Color("fundobranco"))
                    .cornerRadius(10)
                    .padding(.vertical, 235)
                    .padding(.horizontal, 20)
                    .offset(y:144)
                VStack{
                    VStack{
                        Text("Juntos por uma Prainha mais limpa")
                            .offset(y:140)
                            .foregroundColor(Color("CorDeFundo"))
                            .bold()
                            .font(.system(size: 30))
                            .offset(x: -1, y: 9)
                        
                        Text("Sua participação não apenas melhora o ambiente, mas também enriquece sua vida e ajuda a construir um futuro mais saudável para as próximas gerações.")
                            .font(.system(size: 18))
                            .padding(.vertical, 80)
                            .padding(.horizontal, 35)
                            .offset(x: -1, y: 62)
                        
                    }
                    .offset(x: -1, y: 75)
                    
                    HStack{
                        Image(systemName: "location.fill")
                            .foregroundColor(Color("cortexto"))
                        Text ("Prainha")
                            .font(.system(size: 17))
                            .foregroundColor(Color("cortexto"))
                            .bold()
                    }
                    .offset(x: -112, y:121)
                    
                    VStack{
                        Label{
                            Text ("Share")
                        } icon:{
                            Image(systemName: "square.and.arrow.up.circle")
                                .resizable()
                                .frame(width: 26, height: 26)
                        }.offset(x: 108, y: 49)
                        
                        
                        HStack{
                            Text ("02/12/2023")
                                .font(.system(size: 17))
                                .foregroundColor(Color("cortexto"))
                                .bold()
                            Text ("16:00")
                                .font(.system(size: 17))
                                .foregroundColor(Color("cortexto"))
                                .bold()
                        }
                        .offset(x: 83, y: 58)
                        
                    }
                }
                RetPeq()
                    .offset(x: 1, y: 207)
            }
            .offset(x: 1, y: -27)
            
        }
    }
}
//}
#Preview {
    Estendida1()
}
