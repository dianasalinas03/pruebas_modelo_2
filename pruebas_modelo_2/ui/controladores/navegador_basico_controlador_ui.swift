//
//  ContentView.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 02/03/26.
//

import SwiftUI

struct NavegadorBasico: View {
    var body: some View {
        NavigationStack{
            PantallaBasica()
        }
    }
}

#Preview {
    let controladorDePrueba = ControladorGeneral()
    
   
    controladorDePrueba.mensajes = mensajes_falsos
    controladorDePrueba.usuarios = usuarios_falsos
    
    return NavegadorBasico()
        .environment(controladorDePrueba)
}
