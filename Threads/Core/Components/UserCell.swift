//
//  UserCell.swift
//  Threads
//
//  Created by Ankit Rajput on 15/08/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        
            HStack {
                CircularProfileImageView()
                
                VStack (alignment: .leading) {
                    Text("maxverstappen1")
                        .fontWeight(.semibold)
                    
                    Text("Max Verstappen")
                }
                .font(.footnote)
                
                Spacer()
                
                Text("Follow")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(width: 100, height: 32)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    }
            }
            .padding(.horizontal)
        }
    }


#Preview {
    UserCell()
}
