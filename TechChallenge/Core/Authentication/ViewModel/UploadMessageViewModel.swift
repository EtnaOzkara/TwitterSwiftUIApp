//
//  UploadMessageViewModel.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import Foundation

class UploadMessageViewModel: ObservableObject{
    let service=MessageService()
    func uploadMessage(withCaption caption: String){
        service.uploadMessage(caption: caption)
        
    }
}
