//
//  controlador_general.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 02/03/26.
//
import SwiftUI

@Observable
class ControladorGeneral{
    public var mensajes: [Mensaje]
    public var usuarios: [Usuario]
    
    init() {
        mensajes = []
        usuarios = []
    }
    
    func agregar_mensajes(){
        mensajes += [Mensaje (texto: "mensaje de: \(mensajes.count + 1)", id_usuario: nil)]
    }
    
    func agregar_mensaje_personalizado(texto_nuevo: String) {
            mensajes.append(Mensaje(texto: texto_nuevo, id_usuario: nil))
        }
    
    func agregar_usuario( _ usuario_nuevo: Usuario){
        usuarios.append(usuario_nuevo)
        
        print ("la cantidad de usuarios es: \(usuarios.count)")
    }
}
