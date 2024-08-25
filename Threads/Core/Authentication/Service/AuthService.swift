//
//  AuthService.swift
//  Threads
//
//  Created by Ankit Rajput on 25/08/24.
//

import Firebase
import FirebaseAuth

class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(withEmail email: String, password: String, fullName: String, userName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Create User \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create an user with error \(error.localizedDescription)")
        }
    }
}
