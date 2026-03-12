//
//  pruebas_modelo_2App.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 02/03/26.
//

import SwiftUI

@main
struct pruebasmodelo2App: App {
    
    @State var controlador = ControladorGeneral()
    var body: some Scene {
        WindowGroup {
            NavegadorBasico()
                .environment(controlador)
        }
    }
}
#Preview {
    let controladorDePrueba = ControladorGeneral()
    
    // Aquí le inyectamos tus datos falsos
    controladorDePrueba.mensajes = mensajes_falsos
    controladorDePrueba.usuarios = usuarios_falsos
    
    return NavegadorBasico()
        .environment(controladorDePrueba)
}
