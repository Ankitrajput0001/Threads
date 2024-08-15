//
//  RegistrationView.swift
//  Threads
//
//  Created by Ankit Rajput on 05/08/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                //logo image
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                
                //text fields
                VStack {
                    TextField("Enter your email", text: $email)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your full name", text: $fullName)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your username", text: $userName)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                //login button
                Button {
                    print("Log in button pressed")
                } label: {
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                Spacer()
                
                
                //sign up link
                Divider()
                
                Button {
                    dismiss()
                } label: {
                    HStack (spacing: 3) {
                        Text("Already have an account?")
                        
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    RegistrationView()
}
