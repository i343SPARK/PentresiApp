//
//  NextEventsListView.swift
//  Pentresi
//
//  Created by Pablo Salas on 03/04/24.
//

import SwiftUI

struct NextEventsListView: View {
    @State private var currentIndex = 0
    var body: some View {
        
        VStack(){
            ScrollView(showsIndicators: false){
                ForEach(Array(sampleEvents.dropFirst()), id: \.id) { event in
                   NextEventsCardView(event: event)
                       .padding([.vertical], 5)
               }
            }
            
        }
    }
   
}

#Preview {
    NextEventsListView()
}
