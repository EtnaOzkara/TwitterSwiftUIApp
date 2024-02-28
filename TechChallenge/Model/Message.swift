//
//  Tweet.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import FirebaseFirestoreSwift
import Firebase

struct Message : Identifiable, Decodable{
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes: Int
    
    var user: User?
}
