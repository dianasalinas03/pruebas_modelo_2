//
//  prevista_mensaje_vista.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 09/03/26.
//

import SwiftUI

struct PrevistaMensaje: View {
    var mensaje: Mensaje
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "bubble.left.fill")
                    .foregroundStyle(.blue)
                Text(mensaje.id_usuario ?? "Anónimo")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                Spacer()
            }
            
            Text(mensaje.texto)
                .font(.body)
                .foregroundStyle(.primary)
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    PrevistaMensaje(mensaje: mensajes_falsos[0])
}
