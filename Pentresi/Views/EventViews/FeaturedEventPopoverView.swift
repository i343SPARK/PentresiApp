//
//  FeaturedEventPopoverView.swift
//  Pentresi
//
//  Created by Pablo Salas on 25/03/24.
//

import SwiftUI

struct FeaturedEventPopoverView: View {
    var featuredEvent: FeaturedEvent // Asegúrate de que 'FeaturedEvent' está definido en otro lugar.
    
    var body: some View {
        ZStack() {
          Rectangle()
                .foregroundColor(.clear).background(Image(featuredEvent.imageName).resizable().aspectRatio(contentMode: .fill))
            .frame(width: .infinity, height: 568).offset(x:0,y:-150)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: .infinity, height: 748)
            .background(
                LinearGradient(gradient: Gradient(colors: [.black, Color(red: 0, green: 0, blue: 0).opacity(0)]), startPoint: .top, endPoint: .bottom).offset(x:0,y:-250)
            )
            ScrollView(showsIndicators: false){
                Spacer().frame(height: 450)
                ZStack{
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 100, height: 4)
                      .background(Color.gray)
                      .cornerRadius(24).offset(x:0,y:-280)
                    ScrollView(){
                        Text(featuredEvent.story).frame(width: 356)
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: .infinity, height: 200)
                          .background(Color(UIColor.systemBackground))
                          .cornerRadius(24)
                          .offset(x: 0, y: 0)
                    }.padding([.vertical], 40)
                    
                }.background(Color(UIColor.systemBackground)).frame(width: .infinity, height: 600).clipShape(.rect(
                    topLeadingRadius: 29,
                    topTrailingRadius: 29
                ))
                
            }
          HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 5) {
                Text(featuredEvent.title)
                    .font(Font.custom("Playfair Display", size: 32).weight(.bold)).frame(width: 350, alignment: .center)
                .foregroundColor(.white)
                Text(featuredEvent.author)
                .font(Font.custom("Roboto", size: 14))
                .foregroundColor(.white).frame(width: 350, alignment: .center)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
          }
          .padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 14))
          .frame(width: 316.50)
          .offset(x: 0.25, y: -296.50)
        }
        .frame(width: .infinity, height: 748).clipShape(.rect(
            topLeadingRadius: 9,
            topTrailingRadius: 9
        ))
      }
    }
struct FeaturedEventPopoverView_Preview: PreviewProvider {
    static var previews: some View {
        // Crea un evento de muestra para la previsualización.
        let featuredEvent = FeaturedEvent(title: "Exposición de Arte Moderno",imageName: "Imagen1", story: "Una reflexión escénica sobre la vida.", author: "Compañía Teatral Ciudad")
        
        FeaturedEventPopoverView(featuredEvent: featuredEvent)
            .previewLayout(.sizeThatFits)
    }
}
