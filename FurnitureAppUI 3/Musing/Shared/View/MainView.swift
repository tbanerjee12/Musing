

import SwiftUI

struct MainView: View {
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
            
            Text("Journal")
               .tag(Tab.journal)
               .setUpTab()
           
            
             Text("Entries")
                .tag(Tab.entries)
                .setUpTab()
            
             Text("Chat")
                .tag(Tab.chat)
                .setUpTab()
        }
        
        
        .overlay(alignment: .bottom) {
            CustomTabBar(currentTab: $appModel.currentTab, animation: animation)
                
        }
        
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

// MARK: Custom Extensions
extension View{
    @ViewBuilder
    func setUpTab()->some View{
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background{
                Color("new")
                    .ignoresSafeArea()
            }
    }
}
