//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Ankit Rajput on 15/08/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("max-verstappen")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
