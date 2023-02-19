//
//  ContentView.swift
//  Shared
//
//  Created by Balaji on 28/05/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: View Properties
    @StateObject var appModel: AppViewModel = .init()
    // MARK: Animation Properties
    @Namespace var animation
    // MARK: Hiding Native Tab Bar
    init(){
        UITabBar.appearance().isHidden = true
    }

        
        var body: some View {
            TabView(selection: $appModel.currentTab) {
                Home(animation: animation)
                    .environmentObject(appModel)
                    .tag(Tab.home)
                    .setUpTab()
                
                JournalView()
                    .tag(Tab.journal)
                    .setUpTab()
                     
            
                DetailView()
                //Text("Chat")
                    .tag(Tab.entries)
                    .setUpTab()
                    //.foregroundColor(.white)
                
                ChatView()
                    .tag(Tab.chat)
                    .setUpTab()
            }
            
            
            
            
            .overlay(alignment: .bottom) {
                CustomTabBar(currentTab: $appModel.currentTab, animation: animation)
                    
            }
            
            .ignoresSafeArea(.keyboard, edges: .bottom)
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




