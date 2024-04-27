//
//  EventPopoverView.swift
//  Pentresi
//
//  Created by Pablo Salas on 23/03/24.
//

import SwiftUI

struct EventPopoverView: View {
    var event: Event // Event es un modelo de datos que debes definir en otro lugar.
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: .infinity, height: 390)
                  .background(
                      Image(event.imageName).resizable().aspectRatio(contentMode: .fill)
                  )
                  .clipShape(.rect(
                    topLeadingRadius: 9,
                    topTrailingRadius: 9
                ))
                  .offset(x: 0, y: 0)

                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: .infinity, height: 390)
                  .background(
                    LinearGradient(gradient: Gradient(colors: [Color(red: 0, green: 0, blue: 0).opacity(0), .black]), startPoint: .top, endPoint: .bottom)
                  )
                  .clipShape(.rect(
                    topLeadingRadius: 9,
                    topTrailingRadius: 9
                ))
                  .offset(x: 0, y: 0)
                
                VStack(alignment: .center, spacing: 40) {
                    Text(event.title)
                        .font(Font.custom("Playfair Display", size: 32).weight(.bold)).frame(width: .infinity, alignment: .center)
                    .foregroundColor(.white)
                    
                    VStack(spacing: 10){
                        Text(event.location + " - " + event.hour)
                        .font(Font.custom("Roboto", size: 16).weight(.bold))
                        .foregroundColor(.white)
                        Text(event.date, style: .date)
                        .font(Font.custom("Roboto", size: 16))
                        .foregroundColor(.white)
                    }
                }.offset(x: 0, y: 100)
            }
            ScrollView{
                VStack(spacing:30){
                    Text(event.description).font(Font.custom("Roboto", size: 16)).fontWeight(.regular).frame(width: 370).multilineTextAlignment(.center)
                    
                    VStack(spacing:10){
                        Button(action: {}){
                            Text("Consigue tus boletos aqui").foregroundColor(.black)
                        }.frame(width: 166, height: 60).background(Color(red: 1, green: 0.86, blue: 0.48)).clipShape(RoundedRectangle(cornerRadius: 19))
                        Text("O\n\nVisita a nuestros afiliados y adquiere tus boletos")
                              .font(Font.custom("Roboto", size: 14)).multilineTextAlignment(.center)
                    }
                    
                    VStack(spacing:20){
                        HStack(spacing:10){
                            Image("Location")
                            Text("Paseo Durango").font(Font.custom("Roboto", size: 18)).fontWeight(.medium)
                            Spacer()
                        }
                        HStack(spacing:10){
                            Image("Location")
                            Text("Punto Guadiana").font(Font.custom("Roboto", size: 18)).fontWeight(.medium)
                            Spacer()
                        }
                        HStack(spacing:10){
                            Image("Location")
                            Text("Parque Saguatoba").font(Font.custom("Roboto", size: 18)).fontWeight(.medium)
                            Spacer()
                        }
                        
                    }.frame(width: 370)
                    
                }
            }
            Spacer()
        }
    }
}

struct EventPopoverView_Preview: PreviewProvider {
    static var previews: some View {
        // Crea un evento de muestra para la previsualización.
        let sampleEvent = Event(title: "Concierto de Piano", date: Date(), hour:"18:00", location: "Teatro Ricardo Castro", imageName: "Imagen3", description: "Nana Prrr, es el ritual  de dos pequeñas que se niegan a dormir. Cuantos juegos, cuantas risas, cuantos uníversos podemos habitar antes de que el bostezo más grande nos desplome en la cama acolchonada?", detailedDescription: "Detalles del concierto...", author: "Juan Pérez")
        
        EventPopoverView(event: sampleEvent)
            .previewLayout(.sizeThatFits)
    }
}

