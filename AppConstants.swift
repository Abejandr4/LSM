//
//  AppConstants.swift
//  LSM
//
//  Created by iOS Lab on 10/11/25.
//
import Foundation

struct Data{
    static let preguntas : [Pregunta] = [
        Pregunta(query: "Que seña es esa", respuestaImg: ["star.fill", "star.fill"], respuestaTexto: ["String"], respuestaSubtexto: ["String"]),
        Pregunta(query: "Que seña es esa", respuestaImg: ["star.fill", "star.fill"], respuestaTexto: ["String"], respuestaSubtexto: ["String"]),
        Pregunta(query: "Que seña es esa", respuestaImg: ["star.fill", "star.fill"], respuestaTexto: ["String"], respuestaSubtexto: ["String"]),
        Pregunta(query: "Que seña es esa", respuestaImg: ["star.fill", "star.fill"], respuestaTexto: ["String"], respuestaSubtexto: ["String"])
    ]
}

struct Lecciones{
    let pregunta : String
    let preguntaVideo : String
    let opciones: [String]
    let opcionesCorrectasIndex: Int
}


struct LeccionDatos {
    static let lecciones : [Lecciones] = [
        Lecciones(pregunta: "Pregunta", preguntaVideo: "star.fill", opciones: ["opcion 1", "opcion 2"], opcionesCorrectasIndex: 1)
    ]
    
}
