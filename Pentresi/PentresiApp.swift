//
//  PentresiApp.swift
//  Pentresi
//
//  Created by Pablo Salas on 05/03/24.
//

import SwiftUI

@main
struct PentresiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.91, green: 0.83, blue: 0.67), .white]), startPoint: .top, endPoint: .bottom))
        }
    }
}
