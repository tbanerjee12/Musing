


import SwiftUI

struct DetailView: View {
    
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                   
                    NavigationLink(destination: JournalView().navigationBarHidden(true), label: {
                        
                        Text("Back")
                            .padding(.top, 30)
                            .padding(.trailing, 300)
                            .foregroundColor(.white)
                    })
                    
                    
                    
                    HStack{
                        
                        Text("It sounds like you feel stressed, but that's okay!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        
                    }
                    .padding(.horizontal, 30)
                    .padding(.top, 5)
                    
                    HStack {
                        Image("ellipse")
                            .renderingMode(.original)
                        
                        
                        
                        Text("Music & Podcasts curated for your mood")
                            .font(.title2)
                        
                            .foregroundColor(.white)
                    }
                    .padding(.top)
                    .padding(.horizontal, 50)
                    
                    .padding(.leading, -50)
                    
                    .padding(.vertical, 5)
                    
                    Button(action: {
                        
                    }) {
                        
                        
                        VStack{
                            
                            
                            Text("Open on Spotify")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 200, height: 50)
                                .background(Color("Orange"))
                            
                                .cornerRadius(50)
                            
                            
                        }
                        
                        
                        
                        
                    }
                    
                    .padding(.top, 7)
                    
                    HStack {
                        Image("ellipse")
                            .renderingMode(.original)
                        
                        
                        
                        Text("Remember this?")
                            .font(.title2)
                        
                            .foregroundColor(.white)
                        
                    }
                    // .padding(.top)
                    .padding(.horizontal, 147)
                    
                    .padding(.leading, -147)
                    
                    
                    
                    VStack{
                        
                        
                        Text("I’m so excited to attend TreeHacks! I feel like I will meet so many cool people there.")
                        
                            .foregroundColor(.white)
                            .frame(width: 250, height: 90)
                            .background(Color("button"))
                        
                            .cornerRadius(20)
                            .padding(.trailing, -50)
                        
                        
                    }
                    .padding(.top, -10)
                    
                    
                    HStack {
                        Image("ellipse")
                            .renderingMode(.original)
                        
                        
                        
                        Text("CBT Exercise")
                            .font(.title2)
                        
                            .foregroundColor(.white)
                        
                        
                        Button(action: {
                            
                        }) {
                            Image("arrow")
                                .padding(.horizontal, -10)
                        }
                    }
                    .padding(.top, 5)
                    .padding(.horizontal, 100)
                    
                    .padding(.leading, -100)
                    
                    
                    HStack {
                        Image("ellipse")
                            .renderingMode(.original)
                        
                        
                            .padding(.vertical, -30)
                        
                        Text("Connect with Therapists")
                            .font(.title2)
                        
                            .foregroundColor(.white)
                        
                        Button(action: {
                            
                        }) {
                            Image("arrow")
                                .padding(.horizontal, -10)
                        }
                    }
                    .padding(.top,-10)
                    .padding(.horizontal, 1)
                    
                    .padding(.leading, -1)
                    
                    
                    
                    
                }
                
                
            }
            
            
            
            .background(Color("new"))
        }
    }
    
}
    
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

