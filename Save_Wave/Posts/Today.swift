//
//  Today.swift
//  Save_Wave
//
//  Created by User on 08/12/23.
//

import SwiftUI

struct Today: Identifiable{
    var id = UUID().uuidString
    var appName: String
    var appDescricao: String
    var logoTitle: String
    var extendidoTitle: String
    var artLogo: String
    var postText: String
    var extendedContent: () -> AnyView
}
var todayItens: [Today] = [
    Today(appName: "Praia do Aquiraz", appDescricao: "Coleta de lixo",  logoTitle: "Coleta de Lixo na Praia do Aquiraz", extendidoTitle: "", artLogo: "01", postText: ""){
        AnyView(Estendida03(todayItem: todayItens[0]))
    },
    Today(appName: "Praia de Iracema", appDescricao: "Protesto",  logoTitle: "Juntos por uma Praia de Iracema mais limpa", extendidoTitle: "", artLogo: "02", postText: ""){
        AnyView(Estendida01(todayItem: todayItens[1]))
    },
    Today(appName: "Canoa Quebrada", appDescricao: "Coleta de lixo",  logoTitle: "Juntos pela Canoa Quebrada", extendidoTitle: "", artLogo: "03", postText: ""){
        AnyView(Estendida02(todayItem: todayItens[2]))
    }
]
    
