//
//  FeedView.swift
//  Threads
//
//  Created by Ankit Rajput on 15/08/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                LazyVStack {
                    ForEach (0 ... 10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
