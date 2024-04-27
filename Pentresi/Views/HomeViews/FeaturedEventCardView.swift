//
//  FeaturedEventCardView.swift
//  Pentresi
//
//  Created by Pablo Salas on 12/03/24.
//

import SwiftUI

struct FeaturedEventCardView: View {
    var featuredEvent: FeaturedEvent // Asegúrate de que 'FeaturedEvent' está definido en otro lugar.
    @State private var showingPopover = false

    var body: some View {
        VStack(spacing: 14) {
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 355, height: 155)
                  .background(Image(featuredEvent.imageName).resizable().aspectRatio(contentMode: .fill))
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 355, height: 153)
                  .background(
                    LinearGradient(gradient: Gradient(colors: [Color(red: 0, green: 0, blue: 0).opacity(0), .black]), startPoint: .top, endPoint: .bottom)
                  )
                  .cornerRadius(9)
                  .offset(x: 0, y: 0)
                  Text(featuredEvent.title).frame(width: 330, alignment: .leading)
                  .font(Font.custom("Playfair Display", size: 26).weight(.bold))
                  .foregroundColor(.white)
                  .offset(x: 0, y: 38.50)
              }
              .frame(width: 355, height: 153).clipShape(.rect(
                topLeadingRadius: 9,
                topTrailingRadius: 9
            ))
            Text(featuredEvent.story).frame(width: 330)
                .font(Font.custom("Roboto", size: 12).weight(.regular))
                .foregroundColor(.black)
            Spacer()
              HStack(spacing: 10) {
                ZStack() {
                    
                    Button(action: {
                        self.showingPopover = true
                        
                    }, label: {
                        Text("Leer mas").font(Font.custom("Roboto", size: 14).weight(.medium))
                            .foregroundColor(.black)
                            .offset(x: -1.52, y: 0)
                        
                    }).foregroundColor(.clear)
                        .frame(width: 75, height: 36)
                        .background(Color(red: 1, green: 0.86, blue: 0.48))
                        .cornerRadius(10).sheet(isPresented: $showingPopover, content: {
                            FeaturedEventPopoverView(featuredEvent: featuredEvent)
                        })
                    
                }
                  Spacer().frame(width: 91)
                  Text(featuredEvent.author)
                  .font(Font.custom("Roboto", size: 12).weight(.medium))
                  .foregroundColor(.black)
              }
              .frame(width: 356)
            Spacer()
            }
            .frame(width: 356, height: 315)
            .background(Color(red: 0.91, green: 0.83, blue: 0.67).opacity(0.35)).clipShape(.rect(
                bottomLeadingRadius: 9,
                bottomTrailingRadius: 9
            ))
        }
    }
// Proveedor de previsualización para 'FeaturedEventCardView'
struct FeaturedEventCardView_Previews: PreviewProvider {
    static var previews: some View {
        let featuredEvent = FeaturedEvent(title: "Exposición de Arte Moderno",imageName: "Imagen1", story: "Una reflexión escénica sobre la vida.", author: "Compañía Teatral Ciudad")

        FeaturedEventCardView(featuredEvent: featuredEvent)
            .previewLayout(.sizeThatFits)
    }
}
