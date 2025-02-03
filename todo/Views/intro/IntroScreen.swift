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
            
            VStack(
                alignment: .center
            ){
                Spacer()
                Text("Pick some new\nhabits to get started")
                    .font(.title)
                    .fontWeight(.black)
                    .bold()
                    .lineSpacing(10)
                Spacer()
                HStack{
                    Text("Excecise")
                        .padding(.horizontal, 24)
                        .padding(.vertical, 10)
                        .background(Color.gray.opacity(0.1))
                        .foregroundColor(.black)
                        .clipShape(CustomRoundedShape(cornerRadius: 8))
                        .shadow(radius: 5)
                }
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
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("#F9F5F4"))

        }
    }
}


#Preview {
    IntroScreen()
}


struct CustomRoundedShape : Shape{
    var cornerRadius : CGFloat
    func path(in rect: CGRect) -> Path {
        var path = Path();
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: cornerRadius, height: cornerRadius))
        return path
    }
}
