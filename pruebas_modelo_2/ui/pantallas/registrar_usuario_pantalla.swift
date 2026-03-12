//
//  registrar_usuario_pantalla.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 02/03/26.
//
import SwiftUI

enum CamposRegistrarUsuario: String{
    case nombre = "nombre"
    case apodo = "apodo"
    case edad = "edad"
    case instagram =  "instagram"
}

struct RegistrarUsuario: View {
    @Environment(ControladorGeneral.self) var controlador
    @Environment(\.dismiss) var salir
    
    @State var nombre: String = ""
    @State var instagram: String = ""
    @State var edad: String = ""
    @State var apodo: String = ""
    
    @State var error: ErrorUI? = nil
    
    var body: some View {
        Form {
            if error != nil {
                Section {
                    Text("Hay un problema, por favor revisa los campos.")
                        .foregroundStyle(.red)
                        .font(.caption)
                }
            }
            
            Section(header: Text("Datos Personales")) {
                CampoTexto(
                    entrada: $nombre,
                    placeholder: "Nombre completo",
                    error: error,
                    id: CamposRegistrarUsuario.nombre.rawValue
                )
                
                CampoTexto(
                    entrada: $apodo,
                    placeholder: "Apodo",
                    error: error,
                    id: CamposRegistrarUsuario.apodo.rawValue
                )
                
                TextField("Edad", text: $edad)
                    .keyboardType(.numberPad)
                
                TextField("Usuario de Instagram", text: $instagram)
                  
            }
            
            Section {
                Button(action: {
                    validar_entradas()
                }){
                    HStack{
                        Spacer()
                        Text("Agregar usuario")
                            .fontWeight(.bold)
                        Image(systemName: "person.fill.badge.plus")
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle("Nuevo Usuario")
    }
    
    func validar_entradas(){
        if(nombre.isEmpty){
            error = ErrorUI(campo: CamposRegistrarUsuario.nombre.rawValue, error: "Pon un nombre por favor", nivel_de_error: .gravitsimo)
            return
        }
        
        if(apodo.isEmpty){
            error = ErrorUI(campo: CamposRegistrarUsuario.apodo.rawValue, error: "Apodo no válido", nivel_de_error: .gravitsimo)
            return
        }
        
        controlador.agregar_usuario(crear_usuario())
        salir()
    }
    
    func crear_usuario() -> Usuario{
        return Usuario(
            nombre: nombre,
            edad: Int(edad) ?? 0,
            apodo: apodo,
            instagram: instagram
        )
    }
}
#Preview {
    RegistrarUsuario()
        .environment(ControladorGeneral())
}
