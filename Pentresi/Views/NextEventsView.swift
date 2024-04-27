//
//  NextEventsView.swift
//  Pentresi
//
//  Created by Pablo Salas on 25/03/24.
//

import SwiftUI

struct NextEventsView: View {
    var body: some View {
        VStack(){
            VStack(){
                Text("Siguiente Evento").font(Font.custom("Playfair Display", size: 26).weight(.medium))
                    .foregroundColor(Color(.black)).frame(width: 356, alignment: .leading)
                
                EventCardView(event: sampleEvents[0]).padding([.vertical], 10)
                
                
            }.frame(height: 270)
            
            Text("Próximos Eventos").font(Font.custom("Playfair Display", size: 26).weight(.medium))
                .foregroundColor(Color(.black)).frame(width: 356, alignment: .leading)
            
            NextEventsListView()
            
            
            
        }.frame(width: 400, height: .infinity).background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.91, green: 0.83, blue: 0.67), .white]), startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    NextEventsView()
}
