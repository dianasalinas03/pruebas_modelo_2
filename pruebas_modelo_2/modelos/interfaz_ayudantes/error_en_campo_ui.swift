//
//  error_en_campo_ui.swift
//  pruebas_modelo_2
//
//  Created by Diana⭐ on 04/03/26.
//

enum NivelesDeError{
    case gravitsimo
    case nah_solo_advierte
    case ninguno
}


struct ErrorUI{
    let campo: String
    let error: String
    let nivel_de_error: NivelesDeError
}
