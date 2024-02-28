//
//  MessageService.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import Firebase

struct MessageService{
    func uploadMessage(caption:String){
        guard let uid = Auth.auth().currentUser?.uid else {return}
        let data = ["uid":uid,"caption":caption, "likes":0, "timestamp":Timestamp(date:Date())] as [String : Any]
        
        Firestore.firestore().collection("messages").document()
            .setData(data){ _ in
                print("Uploaded message")
            }
    }
    
    func fetchMessages(completion: @escaping ([Message]) -> Void){
        Firestore.firestore().collection("messages").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else {return}
            
            let messages = documents.compactMap({ try? $0.data(as : Message.self)})
            completion(messages)
        }
    }
    
    func likeMessage(){
        print("Debug: liked")
    }
}
