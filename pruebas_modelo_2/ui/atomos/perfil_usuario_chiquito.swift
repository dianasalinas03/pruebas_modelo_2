//
//  perfil_usuario_chiquito.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 09/03/26.
//

import SwiftUI

struct EtiquetaUsuarioPerfil: View {
    var usuario: Usuario
    
    var body: some View {
        HStack(spacing: 15) {
            ZStack(alignment: .bottomTrailing) {
              
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.gray)
                
            
                Circle()
                    .frame(width: 14, height: 14)
                    .foregroundStyle(usuario.conectado ? Color.green : Color.red)
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
            }
            
            VStack(alignment: .leading) {
                Text(usuario.apodo)
                    .font(.headline)
                Text(usuario.nombre)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    EtiquetaUsuarioPerfil(usuario: usuarios_falsos[0])
}
