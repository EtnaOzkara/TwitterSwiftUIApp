//
//  LoginView.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email=""
    @State private var password=""
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
            
            VStack{
                
                VStack(alignment: .leading){
                    HStack{Spacer()}
                    Text("Welcome")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    Text("Please login")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    
                }.frame(height: 300)
                    .background(Color(.systemPink))
                    .foregroundColor(.white)
                VStack{
                    TextField("Email", text: $email).padding()
                    TextField("Password", text: $password).padding()
                    
                }.padding(.top, 50)
                    .padding(.horizontal, 30)
                Button{
                    viewModel.login(withEmail: email, password: password)
                }label:{
                    Text("Sign In")
                    
                }.padding()
                    .foregroundColor(Color(.white))
                    .frame(width:200, height:50)
                    .background(Color(.systemPink))
                    .clipShape(Capsule())
                
                HStack{
                    NavigationLink{
                        Text("Resert password view ")
                    }label:{
                        Text("Forgot my password")
                    }.font(.caption)
                        .foregroundColor(Color(.systemPink))
                }.padding()
                HStack{
                    NavigationLink{
                        RegistrationView()
                            .navigationBarHidden(true)
                    }label:{
                        Text("Dont have an account? Sign up here")
                    }.font(.subheadline)
                        .foregroundColor(Color(.systemPink))
                }.padding()
                
                
                Spacer()
            }.ignoresSafeArea()
                .navigationBarHidden(true)
            
            Spacer()
        }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
