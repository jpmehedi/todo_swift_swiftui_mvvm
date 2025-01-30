//
//  HomeScreen.swift
//  todo
//
//  Created by Corporation CMatrix on 2025/01/24.
//

import SwiftUI

struct HomeScreen : View{
    @ObservedObject var appText = AppText()
    var body : some View{
        NavigationView{
            Text("Hello")
            
        }
        .navigationTitle(appText.homeScreenTitle)
    }
}

#Preview {
    HomeScreen()
}
