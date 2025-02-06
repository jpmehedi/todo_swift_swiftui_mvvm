//
//  IntroScreen.swift
//  todo
//
//  Created by Corporation CMatrix on 2025/01/31.
//

import SwiftUI

struct IntroScreen: View {
    
    let suggestions = [
        "Exercise", "Read books", "Meditate",
        "Plan meals", "Water plants", "Journal",
        "Stretch for 15 mins", "Review goals before"
    ]
    
    var body: some View {
        ZStack(
            alignment: .center
        ){
            Image("IntroBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(
                alignment: .leading
            ){
                Spacer()
                Text("Pick some new\nhabits to get started")
                    .font(.system(size: 32))
                    .fontWeight(.black)
                    .bold()
                    .lineSpacing(10)
                    .padding()
                
                Spacer()
                
                VStack(
                    alignment: .leading
                ){
                    Text("RECOMMENDED")
                        .font(.caption)
                        .foregroundColor(.brown)
                        .padding(.leading, 10)
        
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            CustomChips(text: suggestions[0])
                            CustomChips(text: suggestions[1])
                            CustomChips(text: suggestions[2])
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            CustomChips(text: suggestions[3])
                            CustomChips(text: suggestions[4])
                            CustomChips(text: suggestions[5])
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            CustomChips(text: suggestions[6])
                            CustomChips(text: suggestions[7])
                        }
                    }
                
                
                 }
                .padding(.leading)
                
                Divider().frame(height: 15)
                
                Button(action:{
                    print("Clickd me")
                }){
                    Text("Continue")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
            .padding(.leading)
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("#F9F5F4"))
        }
    }



#Preview {
    IntroScreen()
}



