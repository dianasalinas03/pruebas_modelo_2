//
//  pantalla_agregar_datos.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 11/03/26.
//

import SwiftUI

struct PantallaAgregarDatos: View {
    @Environment(ControladorGeneral.self) var controlador
    
    @State private var textoMensaje: String = ""
    
    var body: some View {
        List {
            Section(header: Text("Usuarios")) {
                NavigationLink {
                    RegistrarUsuario()
                } label: {
                    Text("Registrar Nuevo Usuario")
                }
            }
            
            Section(header: Text("Nuevo Mensaje Anonimo")) {
    
                TextField("type here...", text: $textoMensaje)
                
                Button(action: {
              
                    if !textoMensaje.isEmpty {
                        controlador.agregar_mensaje_personalizado(texto_nuevo: textoMensaje)
                        textoMensaje = ""
                    }
                }) {
                    Label("Enviar Mensaje", systemImage: "paperplane.fill")
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .listRowBackground(Color.clear)
                .disabled(textoMensaje.isEmpty) 
            }
        }
        .navigationTitle("Agregar")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        PantallaAgregarDatos()
    }
    .environment(ControladorGeneral())
}
