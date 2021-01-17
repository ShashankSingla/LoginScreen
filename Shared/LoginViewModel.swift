//
//  LoginViewModel.swift
//  TribeCoach (iOS)
//
//  Created by shashank on 17/01/21.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
}

