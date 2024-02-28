//
//  MainTabView.swift
//  TechChallenge
//
//  Created by Etna Ozkara on 1/4/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex=0
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onTapGesture {
                    self.selectedIndex=0
                }
                .tabItem{
                    Image(systemName:"house")
                    
                }.tag(0)
           
            MessagesView()
                .onTapGesture {
                    self.selectedIndex=1
                }
                .tabItem{
                    Image(systemName:"envelope")
                }.tag(1)
            ProfileView()
                .onTapGesture {
                    self.selectedIndex=2
                }
                .tabItem{
                    Image(systemName:"person")
                        
                }
                .tag(2)
                
        }.accentColor(.pink)
        

    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
