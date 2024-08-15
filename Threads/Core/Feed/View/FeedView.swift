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
            .refreshable {
                print("DEBUG: Refresh Threads!")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FeedView()
}
