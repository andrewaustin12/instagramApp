//
//  IGTextFieldModifier.swift
//  instagramApp
//
//  Created by andrew austin on 6/15/23.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)

    }
    
}
