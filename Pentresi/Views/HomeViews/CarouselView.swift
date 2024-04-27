//
//  CarouselView.swift
//  Pentresi
//
//  Created by Pablo Salas on 23/03/24.
//

import SwiftUI

struct CarouselView: View {
    
    @State private var currentIndex = 0
    var body: some View {
        
        VStack(){
            TabView(selection: $currentIndex){
                ForEach(0..<3) { item in
                    EventCardView(event: sampleEvents[item]).padding([.vertical], 10)

                }
            }.tabViewStyle(PageTabViewStyle()).onAppear {
                setupAppearance()
              }
        }
    }
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
      }
}

#Preview {
    CarouselView()
}
