//
//  HomeScreen.swift
//  todo
//
//  Created by Corporation CMatrix on 2025/01/24.
//

import SwiftUI

struct HomeScreen : View{
    @State var isChecked = false
    @State private var text = ""
    var body: some View{
        VStack(
            alignment: .leading
        ){
            Text("Today")
                .foregroundColor(Color(hex: 0x000000))
                .padding(.bottom, 0)
                .font(.system(size: 36))
                .fontWeight(.bold)
            Spacer()
            VStack(
                alignment: .leading
            ){
                Text("Design")
                    .foregroundColor(Color(hex: 0xD1A28B))
                    .textCase(.uppercase)
                    .padding(.bottom, 0)
                    .font(.system(size: 13))
                
                
                CheckBox(
                    isChecked: isChecked,
                    title: "Read a chapter of a book",
                    onTap: {
                        isChecked.toggle()
                    }
                )
                CheckBox(
                    isChecked: isChecked,
                    title: "Review daily goals before sleeping. Add some new if time permits",
                    onTap: {
                        isChecked.toggle()
                    }
                )
            }
            Spacer()
            
            HStack(
                alignment: .center
            ){
                TextField("Write a task...", text: $text)
                    .padding()
                    .background(Color(hex: 0xF3EFEE))
                    .cornerRadius(8)
                    .frame(height: 56)
                
                Button(action:{
                    print("Clickd me")
                }){
                    Text("Add")
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }

    
        }
        .padding(.all)

    }
}

#Preview {
    HomeScreen()
}





