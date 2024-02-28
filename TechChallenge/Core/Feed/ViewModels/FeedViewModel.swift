//
//  FeedViewModel.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import Foundation

class FeedViewModel: ObservableObject{
    @Published var messages = [Message]()
    let service = MessageService()
    let userService=UserService()
    
    init(){
        fetchMessages()
    }
    func fetchMessages(){
        service.fetchMessages { messages in
            self.messages=messages
            
            for i in 0..<messages.count{
                let uid = messages[i].uid
                self.userService.fetchUser(withUid: uid){ user in
                    self.messages[i].user = user
                }
            }
            
            }
        }
    }


