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
    let columns = [
         GridItem(.adaptive(minimum: 100), spacing: 10) // Adaptive for dynamic width
     ]
    
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
                
                VStack(
                    alignment: .leading
                ){
                    Text("RECOMMENDED")
                        .font(.caption)
                        .foregroundColor(.brown)
                        .padding(.leading, 10)
                    
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(suggestions, id: \.self) { text in
                            CustomChips(text: text)
                        }
                    }
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
                .padding(.all)

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("#F9F5F4"))

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
