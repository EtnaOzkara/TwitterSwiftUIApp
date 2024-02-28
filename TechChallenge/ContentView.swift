//
//  ContentView.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        Group{
            if viewModel.userSession==nil{
                LoginView()
            }else{
//        NavigationView{
            ZStack(alignment: .topLeading){
                MainTabView()
            }.navigationTitle("SocialSphere").font(.title)
            .navigationBarTitleDisplayMode(.inline)
//        }

            }
        }

    }
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
////            .environmentObject(authViewModel)
//    }
//}
