//
//  HistoryView.swift
//  Pentresi
//
//  Created by Pablo Salas on 25/03/24.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack(){
            // Título "Próximos Eventos"
            Text("Eventos Pasados").font(Font.custom("Playfair Display", size: 26).weight(.medium))
                .foregroundColor(Color(.black)).frame(width: 356, alignment: .center)

            // Carrusel de eventos próximos
            CarouselHistoryView().offset(x:0,y:-30)
            
            
        }.frame(height: .infinity).background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.91, green: 0.83, blue: 0.67), .white]), startPoint: .top, endPoint: .bottom))
        
    }
}

#Preview {
    HistoryView()
}
