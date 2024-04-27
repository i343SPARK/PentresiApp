//
//  HistoryCardView.swift
//  Pentresi
//
//  Created by Pablo Salas on 26/03/24.
//

import SwiftUI

struct HistoryCardView: View {
    var featuredEvent: FeaturedEvent// FeaturedEvent es un modelo de datos que debes definir en otro lugar.
    
    @State private var showingPopover = false

    var body: some View {
        
        VStack{
            ZStack(alignment: .bottom) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 356, height: 549)
                    .background(
                        Image(featuredEvent.imageName).resizable().aspectRatio(contentMode: .fill)
                    )
                    .cornerRadius(24)
                    .offset(x: 0, y: 0)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 356, height: 309)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(red: 0, green: 0, blue: 0).opacity(0), .black]), startPoint: .top, endPoint: .bottom)
                    )
                    .cornerRadius(24)
                    .offset(x: 0, y: 0)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4)
                
                ZStack() {
                  HStack() {
                      VStack(alignment: .leading, spacing:10){
                          Text(featuredEvent.title)
                          .font(Font.custom("Playfair Display", size: 23).weight(.bold))
                          .foregroundColor(.white)
                          
                          Text(featuredEvent.author)
                          .font(Font.custom("Roboto", size: 14).weight(.medium))
                          .foregroundColor(.white)
                          
                      }.frame(width: 180, alignment: .leading)
                      
                      Spacer().frame(width: 10)
                      
                      Button(action: {
                          self.showingPopover = true
                          
                      }, label: {
                          Text("Leer mas").font(Font.custom("Playfair Display", size: 20).weight(.medium))
                              .foregroundColor(.black)
                          
                      }).foregroundColor(.clear)
                          .frame(width: 122, height: 46)
                          .background(Color.white)
                          .cornerRadius(10).sheet(isPresented: $showingPopover, content: {
                              FeaturedEventPopoverView(featuredEvent: featuredEvent)
                          })
                      
                  }
                    
                }
                .frame(width: 356).offset(x:0, y:-50)
            }
            .frame(width: 356, height: 580);
            
            
        }

    }
}


struct HistoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        // Crea un evento de muestra para la previsualización.
        let featuredEvent = FeaturedEvent(title: "Concierto de Piano", imageName: "Imagen1", story: "Un hermoso concierto de piano.", author: "Juan Pérez")
        
        HistoryCardView(featuredEvent: featuredEvent)
            .previewLayout(.sizeThatFits)
    }
}

