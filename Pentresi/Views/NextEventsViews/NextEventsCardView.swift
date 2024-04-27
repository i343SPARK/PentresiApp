//
//  NextEventsCardView.swift
//  Pentresi
//
//  Created by Pablo Salas on 02/04/24.
//

import SwiftUI

struct NextEventsCardView: View {
    var event: Event
    
    @State private var showingPopover = false
    var body: some View {
        
        HStack(spacing: 25){
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 60)
              .background(
                  Image(event.imageName).resizable().aspectRatio(contentMode: .fit)
              ).cornerRadius(18);
            
            Text(event.title).font(Font.custom("Playfair Display", size: 18).weight(.medium))
                .foregroundColor(Color(.black)).frame(width: 160, alignment: .leading)
            
            Button(action: {
                self.showingPopover = true
                
            }, label: {
                Text("Ver mas").font(Font.custom("Roboto", size: 14).weight(.medium))
                    .foregroundColor(.black)
                    .offset(x: -1.52, y: 0)
                
            }).foregroundColor(.clear)
                .frame(width: 75, height: 36)
                .background(Color(red: 1, green: 0.86, blue: 0.48))
                .cornerRadius(10)
                .offset(x: 0, y: 0).sheet(isPresented: $showingPopover, content: {
                    EventPopoverView(event: event)
            
                })
        }.padding(EdgeInsets(top: 0, leading: 7, bottom: 0, trailing: 7))
            .frame(width: 356, height: 76).background(Color(red: 0.91, green: 0.83, blue: 0.67).opacity(0.28))
            .cornerRadius(13);
    }
}

// Este es tu proveedor de previsualización.
struct NextEventsCardView_Previews: PreviewProvider {
    static var previews: some View {
        // Crea un evento de muestra para la previsualización.
        let sampleEvent = Event(title: "Concierto de Piano", date: Date(), hour:"18:00", location: "Teatro Ricardo Castro", imageName: "Imagen3", description: "Un hermoso concierto de piano.", detailedDescription: "Detalles del concierto...", author: "Juan Pérez")
        
        NextEventsCardView(event: sampleEvent)
            .previewLayout(.sizeThatFits)
    }
}
