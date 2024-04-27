//
//  Event.swift
//  Pentresi
//
//  Created by Pablo Salas on 09/03/24.
//

import Foundation

// Asegúrate de que 'Event' conforme al protocolo Identifiable para ser usado fácilmente en SwiftUI Lists o ForEach.
struct Event: Identifiable {
    let id: UUID // Un identificador único para cada evento
    let title: String // El título del evento
    let date: Date // La fecha y hora del evento
    let hour: String
    let location: String //Ubicacion del lugar
    let imageName: String // El nombre del archivo de imagen para el evento
    let description: String // Una descripción corta del evento
    let detailedDescription: String // Una descripción más detallada para la vista de detalles
    let author: String // El autor o la entidad que organiza el evento
    
    // Inicializador para crear un evento
    init(id: UUID = UUID(), title: String, date: Date, hour: String, location: String, imageName: String, description: String, detailedDescription: String, author: String) {
        self.id = id
        self.title = title
        self.date = date
        self.hour = hour
        self.location = location
        self.imageName = imageName
        self.description = description
        self.detailedDescription = detailedDescription
        self.author = author
    }
}

let sampleEvents = [
    Event(title: "Nana Prr...", date: Date(), hour:"18:00", location: "Teatro Ricardo Castro", imageName: "Imagen3", description: "Nana Prrr, es el ritual  de dos pequeñas que se niegan a dormir. Cuantos juegos, cuantas risas, cuantos uníversos podemos habitar antes de que el bostezo más grande nos desplome en la cama acolchonada?", detailedDescription: "Detalles del concierto...", author: "Juan Pérez"),
    Event(title: "Concierto de Piano", date: Date(), hour:"17:00", location: "Parque Saguatoba", imageName: "Imagen2", description: "Explora la vanguardia del arte.", detailedDescription: "Detalles de la exposición...", author: "Galería de Arte Contemporáneo"),
    Event(title: "Exposición de Arte Moderno", date: Date(), hour:"19:00", location: "Cafe Mamboreta", imageName: "Imagen1", description: "Los mejores cortos del año.", detailedDescription: "Detalles del festival...", author: "Cineclub Local"),
    Event(title: "Notas nocturnas", date: Date(), hour:"18:00", location: "Mirador de las estrellas", imageName: "Imagen4", description: "Nana Prrr, es el ritual  de dos pequeñas que se niegan a dormir. Cuantos juegos, cuantas risas, cuantos uníversos podemos habitar antes de que el bostezo más grande nos desplome en la cama acolchonada?", detailedDescription: "Detalles del concierto...", author: "Juan Pérez"),
    Event(title: "Marfil de estatuas", date: Date(), hour:"17:00", location: "Museo nacional Gerardo Luna", imageName: "Imagen5", description: "Explora la vanguardia del arte.", detailedDescription: "Detalles de la exposición...", author: "Galería de Arte Contemporáneo"),
    Event(title: "Exposición de Arte Moderno", date: Date(), hour:"19:00", location: "Cafe Mamboreta", imageName: "Imagen1", description: "Los mejores cortos del año.", detailedDescription: "Detalles del festival...", author: "Cineclub Local"),
    
]

