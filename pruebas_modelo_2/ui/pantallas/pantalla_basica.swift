//
//  pantalla_basica.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 02/03/26.
//

import SwiftUI

struct PantallaBasica: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        List {
            Section {
                
                NavigationLink {
                    PantallaVerDatos()
                } label: {
                    Label("Ver Mensajes y Usuarios", systemImage: "eye.fill")
                }
                
                NavigationLink {
                    PantallaAgregarDatos()
                } label: {
                    Label("Agregar Mensajes y Usuarios", systemImage: "plus.circle.fill")
                }
            }
        }
        .navigationTitle("Inicio")
        
    
    }
}
 
#Preview {
    NavigationStack {
        PantallaBasica()
    }
    .environment(ControladorGeneral())
}
