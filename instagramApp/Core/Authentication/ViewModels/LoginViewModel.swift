//
//  LoginViewModel.swift
//  instagramApp
//
//  Created by andrew austin on 7/23/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signin() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
