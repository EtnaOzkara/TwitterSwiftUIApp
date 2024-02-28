//
//  UserService.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct UserService{
    func fetchUser(withUid uid: String, completion: @escaping(User) -> Void){
        Firestore.firestore().collection("users").document(uid)
            .getDocument{snapshot, _ in
                guard let snapshot=snapshot else {return}
                guard let user = try? snapshot.data(as: User.self) else {return}
                completion(user)
                print("DEBUG:\(user.username)")
                print("DEBUG:\(user.email)")

                
        }
    }
}

