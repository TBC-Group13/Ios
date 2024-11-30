//
//  LoginViewModel.swift
//  Stay Connected
//
//  Created by Giorgi Matiashvili on 30.11.24.
//

import Foundation

class LoginViewModel {
    var email: String = ""
    var password: String = ""

    var isEmailValid: Bool {
        // Simple email validation (update with a regex for stronger validation if needed)
        return email.contains("@") && email.contains(".")
    }

    var isPasswordValid: Bool {
        // Password must not be empty
        return !password.isEmpty
    }

    func login(completion: @escaping (Bool) -> Void) {
        //Simulated login logic (replace with actual network service)
        if isEmailValid && isPasswordValid {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                completion(true) //Login success
            }
        } else {
            completion(false) //Login failure
        }
    }
}
