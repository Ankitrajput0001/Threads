//
//  ThreadsTextFieldModifier.swift
//  Threads
//
//  Created by Ankit Rajput on 15/08/24.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal, 24)
    }
}
