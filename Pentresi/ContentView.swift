//
//  ContentView.swift
//  Pentresi
//
//  Created by Pablo Salas on 05/03/24.
//

import SwiftUI

enum TabbedItems: Int, CaseIterable{
    case history = 1
    case event = 2
    case home = 0
//    case profile = 3
    
    var title: String{
        switch self {
        case .home:
            return "Inicio"
        case .history:
            return "Historial"
        case .event:
            return "Eventos"
//        case .profile:
//            return "Perfil"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "house.fill"
        case .history:
            return "bookmark.fill"
        case .event:
            return "calendar"
//        case .profile:
//            return "person.fill"
        }
    }
}

struct ContentView: View {
    @State var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(0)

                HistoryView()
                    .tag(1)

                NextEventsView()
                    .tag(2)

//                ProfileView()
//                    .tag(3)
            }
            ZStack{
                HStack{
                    ForEach((TabbedItems.allCases), id: \.self){ item in
                        Button{
                            selectedTab = item.rawValue
                        } label: {
                            CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                        }
                    }
                }
                .padding(2)
            }
            .frame(height: 70)
            .cornerRadius(35)
            .padding(.horizontal, 50).offset(x:0,y:20)
        }
    }
    
}

extension ContentView{
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
        HStack(spacing: 15){
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .black : .black)
                .frame(width: 20, height: 20)
            if isActive{
                Text(title)
                    .font(.custom("Roboto", size: 16))
                    .foregroundColor(isActive ? .black : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity : 60, height: 50)
        .background(isActive ? Color(red: 1, green: 0.86, blue: 0.48) : .clear)
        .cornerRadius(30)
    }
}

#Preview {
    ContentView()
}
