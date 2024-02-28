//
//  AuthViewModel.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import Foundation
import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    @Published var userSession:FirebaseAuth.User?
    @Published var currentUser:User?
    
    private let service = UserService()
    
    init(){
        self.userSession = Auth.auth().currentUser
        self.fetchUser()
    }
    func login(withEmail email: String, password:String){
        Auth.auth().signIn(withEmail: email, password: password){ result, error in
            if let error=error{
                print("DEBUG:failed to signin \(error.localizedDescription)")
                return
            }
            guard let user=result?.user else {return}
            self.userSession=user
        }
        print("DEBUG:User is\(self.userSession)")
    }
    func register(withEmail email: String, password:String, username: String){
        Auth.auth().createUser(withEmail: email, password: password){ result, error in
            if let error=error{
                print("DEBUG:failed to register \(error.localizedDescription)")
                return
            }
            guard let user=result?.user else {return}
            self.userSession=user
            print("DEBUG:User is\(self.userSession)")
            
            let data = ["email": email, "username":username.lowercased(), "uid":user.uid]
            Firestore.firestore().collection("users").document(user.uid).setData(data){ _ in print("Debug: uploaded user data")}
            
        }
    }
    func signOut(){
        userSession=nil
        try? Auth.auth().signOut()
    }
    func fetchUser() {
        guard let uid=self.userSession?.uid else {return}
        service.fetchUser(withUid: uid){user in
            self.currentUser=user
        }
    }
}
