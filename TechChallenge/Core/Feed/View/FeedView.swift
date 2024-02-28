//
//  FeedView.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var viewModel = FeedViewModel()
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(viewModel.messages){ message in
                    PostCardView(message: message)
                        .padding()
                }
            }
    
        }
    }
}
//
//struct FeedView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedView()
//    }
//}
