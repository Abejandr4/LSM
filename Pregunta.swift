//
//  Pregunta.swift
//  LSM
//
//  Created by iOS Lab on 11/11/25.
//

import Foundation

struct Pregunta : Identifiable {
    let id = UUID().uuidString
    let query : String
    let respuestaImg : [String]
    let respuestaTexto : [String]
    let respuestaSubtexto : [String]
    
}
