//
//  campo.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 04/03/26.
//

import SwiftUI

struct CampoTexto: View {
    @Binding var entrada: String
    var placeholder: String
    var error: ErrorUI?
    var id: String
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField(placeholder, text: $entrada)
                .textFieldStyle(.roundedBorder) 
            
            if(error?.campo == id){
                switch error!.nivel_de_error {
                case .gravitsimo:
                    Text(error!.error).font(.caption).foregroundStyle(Color.red)
                case .nah_solo_advierte:
                    Text(error!.error).font(.caption).foregroundStyle(Color.yellow)
                case .ninguno:
                    EmptyView()
                }
            }
        }
    }
}
