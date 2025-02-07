//
//  CheckBox.swift
//  todo
//
//  Created by Corporation CMatrix on 2025/02/07.
//

import SwiftUI

struct CheckBox: View {
    var isChecked : Bool
    var  title : String
    var onTap : () -> Void
    
    init(isChecked: Bool, title: String, onTap: @escaping () -> Void) {
        self.isChecked = isChecked
        self.title = title
        self.onTap = onTap
    }
    
    var body: some View {
        HStack{
            Image(systemName: isChecked ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(Color(hex: isChecked ? 0xF3EFEE : 0x9F9F9F))
                .background(Color(hex: isChecked ? 0x9F9F9F : 0xF3EFEE))
                .onTapGesture {
                    onTap()
                }
                .padding(12)
            
            Text(title)
                .font(.system(size: 17))
                .strikethrough(isChecked)
                .padding(.top, 12)
                .padding(.bottom, 12)
                .padding(.trailing, 12)
            Spacer()
        }
        .frame(maxWidth: .infinity, minHeight: 56)
        .background(Color(hex: 0xF3EFEE))
        .cornerRadius(8)
        .shadow(radius: 0.5)
        .clipped()
    }
}
