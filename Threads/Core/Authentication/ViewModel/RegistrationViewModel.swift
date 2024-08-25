//
//  RegistrationViewModel.swift
//  Threads
//
//  Created by Ankit Rajput on 25/08/24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    @Published var userName = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullName: fullName,
            userName: userName
        )
    }
}
