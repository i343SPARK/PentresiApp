//
//  HomeView.swift
//  Pentresi
//
//  Created by Pablo Salas on 23/03/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ScrollView{
                    VStack(){
                        // Título "Próximos Eventos"
                        Text("Próximos Eventos").font(Font.custom("Playfair Display", size: 26).weight(.medium))
                            .foregroundColor(Color(.black)).frame(width: 356, alignment: .leading)

                        // Carrusel de eventos próximos
                        CarouselView()
                        
                        
                    }.frame(height: 300)
                    
                    

                    // Sección "Evento destacado del día"
                    Text("Evento destacado del día").font(Font.custom("Playfair Display", size: 26).weight(.medium))
                        .foregroundColor(Color(.black)).frame(width: 356, alignment: .leading)

                    FeaturedEventCardView(featuredEvent: featuredEvent[0])
                }

            }
            
        }.background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.91, green: 0.83, blue: 0.67), .white]), startPoint: .top, endPoint: .bottom))
    }
    
}

#Preview {
    HomeView()
}
