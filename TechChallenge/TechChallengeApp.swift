//
//  TechChallengeApp.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import SwiftUI
import Firebase

@main

struct TechChallengeApp: App {
    @StateObject var authViewModel = AuthViewModel()

    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                LoginView()
                ContentView()
            }.environmentObject(authViewModel)
        }
    }
}




