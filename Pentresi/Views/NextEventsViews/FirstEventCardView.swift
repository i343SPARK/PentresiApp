//
//  FirstEventCardView.swift
//  Pentresi
//
//  Created by Pablo Salas on 02/04/24.
//

import SwiftUI

struct FirstEventCardView: View {
    var event: Event // Event es un modelo de datos que debes definir en otro lugar.
    
    @State private var showingPopover = false

    var body: some View {
        
        Button(action:{
            self.showingPopover = true
        }){
            VStack{
                ZStack() {
                      Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 356, height: 200)
                        .background(
                            Image(event.imageName).resizable().aspectRatio(contentMode: .fill)
                        )
                        .cornerRadius(9)
                        .offset(x: 0, y: 0)
                        .shadow(
                          color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                        )
                      Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 356, height: 200)
                        .background(
                          LinearGradient(gradient: Gradient(colors: [Color(red: 0, green: 0, blue: 0).opacity(0), .black]), startPoint: .top, endPoint: .bottom)
                        )
                        .cornerRadius(9)
                        .offset(x: 0, y: 0)
                        .shadow(
                          color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                        )
                      VStack(alignment: .leading, spacing: 5) {
                          Text(event.title)
                              .font(Font.custom("Playfair Display", size: 23).weight(.bold)).frame(width: .infinity, alignment: .leading)
                          .foregroundColor(.white)
                          Text(event.location)
                          .font(Font.custom("Roboto", size: 14))
                          .foregroundColor(.white)
                          Text(event.date, style: .date)
                          .font(Font.custom("Roboto", size: 14))
                          .foregroundColor(.white)
                      }
                      .frame(width: 300, height: 75, alignment: .leading)
                      .offset(x: 0, y: 43.50)
                    }
                    .frame(width: 356, height: 180);
                
                Spacer()
            }
        }.sheet(isPresented: $showingPopover, content: {
            EventPopoverView(event: event)
        })

    }
}

// Este es tu proveedor de previsualización.
struct FirstEventCardView_Previews: PreviewProvider {
    static var previews: some View {
        // Crea un evento de muestra para la previsualización.
        let sampleEvent = Event(title: "Concierto de Piano", date: Date(), hour:"18:00", location: "Teatro Ricardo Castro", imageName: "Imagen3", description: "Un hermoso concierto de piano.", detailedDescription: "Detalles del concierto...", author: "Juan Pérez")
        
        FirstEventCardView(event: sampleEvent)
            .previewLayout(.sizeThatFits)
    }
}
