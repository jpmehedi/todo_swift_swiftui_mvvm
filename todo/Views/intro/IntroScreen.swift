//
//  IntroScreen.swift
//  todo
//
//  Created by Corporation CMatrix on 2025/01/31.
//

import SwiftUI

struct IntroScreen: View {
    var body: some View {
        ZStack(
            alignment: .bottom
        ){
            Image("IntroBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            Button(action:{
                print("Clickd me")
            }){
                Text("Continue")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    
            }
            .padding(30)
        }
    }
}

#Preview {
    IntroScreen()
}
