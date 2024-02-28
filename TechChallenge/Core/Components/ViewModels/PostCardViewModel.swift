//
//  PostCardViewModel.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import Foundation

class PostCardViewModel: ObservableObject {
    private let service = MessageService()
    let message: Message
    
    init (message: Message){
        self.message = message
    }
    func likeMessage(){
        service.likeMessage()
    }
    
}
