//
//  pantalla_ver_datos.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 11/03/26.
//

import SwiftUI

struct PantallaVerDatos: View {
    @Environment(ControladorGeneral.self) var controlador
    
    // Estas variables controlan si las listas empiezan abiertas (true) o cerradas (false)
    @State private var desplegarUsuarios = true
    @State private var desplegarMensajes = true
    
    var body: some View {
        List {
            // Sección desplegable de Usuarios
            DisclosureGroup(isExpanded: $desplegarUsuarios) {
                if controlador.usuarios.isEmpty {
                    Text("No hay usuarios aún.")
                        .foregroundStyle(.secondary)
                } else {
                    ForEach(controlador.usuarios) { usuario in
                        EtiquetaUsuarioPerfil(usuario: usuario)
                    }
                }
            } label: {
                Label("Usuarios Registrados", systemImage: "person.2.fill")
                    .font(.headline)
                    .foregroundStyle(.primary)
            }
            
            // Sección desplegable de Mensajes
            DisclosureGroup(isExpanded: $desplegarMensajes) {
                if controlador.mensajes.isEmpty {
                    Text("No hay mensajes aún.")
                        .foregroundStyle(.secondary)
                } else {
                    ForEach(controlador.mensajes) { mensaje in
                        PrevistaMensaje(mensaje: mensaje)
                    }
                }
            } label: {
                Label("Mensajes Recientes", systemImage: "message.fill")
                    .font(.headline)
                    .foregroundStyle(.primary)
            }
        }
        .navigationTitle("Datos")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let controladorDePrueba = ControladorGeneral()
    controladorDePrueba.mensajes = mensajes_falsos
    controladorDePrueba.usuarios = usuarios_falsos
    
    return NavigationStack {
        PantallaVerDatos()
    }
    .environment(controladorDePrueba)
}
