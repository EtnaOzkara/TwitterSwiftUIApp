//
//  MessagesView.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import SwiftUI

struct MessagesView: View {
    @State private var caption=""
    @ObservedObject var messageViewModel = UploadMessageViewModel()
    var body: some View {
        VStack{
            HStack{
                Button{
//                    print("deleted")
                    caption = ""
                }label:{
                    Text("Cancel").foregroundColor(.pink)
                }.padding()
                Spacer()
                Button{
                    messageViewModel.uploadMessage(withCaption: caption)
                    caption = ""
                }label:{
                    Text("Send").foregroundColor(.white).bold()
                        .padding(.horizontal)
                        .padding(.vertical,9)
                        .background(Color(.systemPink))
                        .clipShape(Capsule())

                }.padding()

            }
            HStack(alignment: .top){
                Circle().frame(width: 100, height: 100).padding()
                TextArea("Write your message here", text:  $caption)
            }
            
        }
        

    }
}

//struct MessagesView_Previews: PreviewProvider {
//    static var previews: some View {
//        MessagesView()
//    }
//}
