//
//  RegistrationView.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email=""
    @State private var password=""
    @State private var username=""
    @EnvironmentObject var viewModel: AuthViewModel

    
    var body: some View {
            VStack{
                
                VStack(alignment: .leading){
                    HStack{Spacer()}
                    Text("Welcome")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    Text("Please sign up")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    
                }.frame(height: 300)
                    .background(Color(.systemPink))
                    .foregroundColor(.white)
                VStack{
                    TextField("Email", text: $email).padding()
                    TextField("Password", text: $password).padding()
                    TextField("Username", text: $username).padding()
                    
                }.padding(.top, 50)
                    .padding(.horizontal, 30)
                Button{
                    viewModel.register(withEmail: email, password: password, username: username)

                }label:{
                    Text("Sign Up")
                    
                }.padding()
                    .foregroundColor(Color(.white))
                    .frame(width:200, height:50)
                    .background(Color(.systemPink))
                    .clipShape(Capsule())
                HStack{
                    NavigationLink{
                        LoginView()
                            .navigationBarHidden(true)
                    }label:{
                        Text("Already have an account? Login Here")
                    }.font(.subheadline)
                        .foregroundColor(Color(.systemPink))
                }.padding()
                
                
                Spacer()
            }.ignoresSafeArea()
                .navigationBarHidden(true)
            
            Spacer()
        }
    
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
