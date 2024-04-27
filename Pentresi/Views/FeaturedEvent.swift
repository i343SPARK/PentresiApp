//
//  FeaturedEvent.swift
//  Pentresi
//
//  Created by Pablo Salas on 25/03/24.
//

import Foundation

// Asegúrate de que 'Event' conforme al protocolo Identifiable para ser usado fácilmente en SwiftUI Lists o ForEach.
struct FeaturedEvent: Identifiable {
    let id: UUID // Un identificador único para cada evento
    let title: String // El título del evento
    let imageName: String // El nombre del archivo de imagen para el evento
    let story: String // Una descripción corta del evento
    let author: String // El autor o la entidad que organiza el evento
    
    // Inicializador para crear un evento
    init(id: UUID = UUID(), title: String, imageName: String, story: String, author: String) {
        self.id = id
        self.title = title
        self.imageName = imageName
        self.story = story
        self.author = author
    }
}

let historia = """
Una tarde de otoño, mientras las hojas danzaban al ritmo del viento, me encontré en un pequeño pueblo al pie de las montañas, un lugar conocido por su luz única, que según los locales, tenía el poder de transformar la visión del más pragmático en sueños de colores vivos. Fue ahí donde descubrí el pequeño taller de un pintor olvidado por el tiempo, un rincón lleno de telas que capturaban momentos suspendidos en la eternidad.

Intrigado por el misterio que envolvía ese lugar, empecé a explorar cada lienzo con detalle. Entre ellos, uno en particular capturó mi atención: una pintura de un paisaje tranquilo que, a primera vista, parecía común. Sin embargo, al observar más de cerca, noté algo extraordinario. En una esquina, apenas perceptible, una mariposa batía sus alas sobre un diente de león.

Aquella imagen me hipnotizó. No entendía por qué, pero sentí una conexión profunda con esa mariposa. Como impulsado por una fuerza desconocida, decidí comprar la pintura, sin saber que ese acto aparentemente insignificante cambiaría mi vida para siempre.

De vuelta a casa, coloqué el cuadro en un lugar especial donde la luz del amanecer podría tocarlo cada mañana. Con cada nuevo día, me encontraba más fascinado por la mariposa y su delicado movimiento, imaginándome a mí mismo en esos paisajes, sintiendo el viento, el sol, y la paz que parecían emanar de la pintura.

Un día, inspirado por esa conexión inexplicable, decidí cambiar mi rutina. En vez de ir directamente al trabajo, tomé un camino diferente, uno que me llevó a través de un parque que nunca antes había visitado. Y fue allí, bajo la sombra de un árbol centenario, donde la vi.

Ella estaba ahí, pintando, con los mismos tonos vibrantes de mi cuadro colgando de su paleta. Nos miramos, y en ese instante, supe que la vida me había llevado exactamente a donde necesitaba estar. Hablamos, y descubrimos una afinidad que iba más allá de las palabras, una conexión que solo podía ser descrita como destino.

Con el tiempo, ella me reveló que era descendiente del pintor del cuadro que había comprado. Ese cuadro, me explicó, era parte de una serie que él había creado, inspirado por la idea del efecto mariposa, con la esperanza de que cada obra encontrara a quien pudiera cambiar su vida de maneras inimaginables.

Y así fue como una simple decisión, impulsada por una conexión misteriosa con una pintura, me llevó a encontrar el amor de mi vida. La mariposa en el cuadro no solo había batido sus alas para mí, sino que había desencadenado una cadena de eventos que reflejaba la esencia misma del efecto mariposa, demostrando que incluso los actos más pequeños pueden tener repercusiones que cambian vidas, llenándolas de color, amor y maravillas inesperadas.
"""


let featuredEvent = [FeaturedEvent(title: "El silencio del pincel", imageName: "Imagen1", story: historia, author: "Jaime Altonazo Ramos"),
                     FeaturedEvent(title: "Notas bajo estrellas", imageName: "Imagen4", story: historia, author: "Jaime Altonazo Ramos"),
                     FeaturedEvent(title: "Jardin musical", imageName: "Imagen2", story: historia, author: "Jaime Altonazo Ramos")]
