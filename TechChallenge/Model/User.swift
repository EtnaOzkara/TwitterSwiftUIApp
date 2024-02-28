//
//  User.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let email:String
    
}
//add let profileImageURL once added 
