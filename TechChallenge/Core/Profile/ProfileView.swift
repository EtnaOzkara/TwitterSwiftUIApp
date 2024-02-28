//
//  ProfileView.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        if let user = viewModel.currentUser{
            VStack{
                HeaderView
                EditButton
                VStack{
                    Text(user.username).font(.title2).bold()
                    Text("Profile bio").font(.subheadline).bold().foregroundColor(.gray).padding()
                }
                Spacer()
                logoutButton
            }
        }
        
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}

extension ProfileView{
    var HeaderView: some View{
        ZStack(alignment: .bottom){
            Color(.systemPink)
                .ignoresSafeArea()
            Circle()
                .frame(width: 200, height:200)
                .padding()
        }.frame(height: 300)
    }
    var EditButton: some View{
        HStack{
           
        Button{
                
        }label:{
        Text("Edit Profile")
                .font(.subheadline).bold()
                .frame(width: 100, height:40)
                .foregroundColor(.pink)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.pink))
            }
         
            
        }.padding()
    }
    var userInfo: some View{
        
        VStack{
            Text("user.username").font(.title2).bold()
            Text("Profile bio").font(.subheadline).bold().foregroundColor(.gray).padding()
        }
        
    }
    var logoutButton: some View{
        Button{
            viewModel.signOut()
        }label:{
        Text("Logout")
                .font(.title3).bold()
                .frame(width: 200, height:50)
                .foregroundColor(.pink)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.pink))
        }.padding()
        
    }
    
    
}
