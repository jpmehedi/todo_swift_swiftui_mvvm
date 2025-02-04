//
//  CustomChips.swift
//  todo
//
//  Created by Corporation CMatrix on 2025/02/04.
//

import SwiftUI

struct CustomChips : View {
    let text : String
    
    init(text: String?) {
        self.text = text ?? "Text"
    }
    
    var body: some View {
        Text(text)
            .padding(.horizontal, 24)
            .padding(.vertical, 10)
            .background(Color.gray.opacity(0.1))
            .foregroundColor(.black)
            .clipShape(CustomRoundedShape(cornerRadius: 8))
            .shadow(radius: 5)
    }
}


