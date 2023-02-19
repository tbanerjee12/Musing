

import SwiftUI

struct Home: View {
    @EnvironmentObject var appModel: AppViewModel
    var animation: Namespace.ID
    @State private var feelings = ""
    // For Easy Calling
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                
                
                
                VStack(spacing: 15){
                    
                    ZStack(alignment: .top){
                        
                        
                        HStack{
                            
                            HStack{
                                Image("lol")
                                    .resizable()
                                    .frame(height: 380)
                                
                            }
                            
                            .padding(.top, -35)
                            .padding(.bottom, -90)
                            
                            
                            
                        }
                        .padding(.horizontal, -75)
                        .padding(.trailing, 170)
                        
                        
                        
                        
                    }
                    
                    
                    
                    VStack{
                        
                        HStack{
                            
                            Text("Hi, how are you feeling?")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            
                        }
                        .padding(.horizontal, 30)
                        .padding(.top,10)
                        
                        
                        
                        Spacer(minLength: 0)
                        
                        HStack(spacing: 10){
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    
                                    HStack{
                                        Image("beetle")
                                            .renderingMode(.original)
                                        
                                        Text("Sad")
                                        
                                            .foregroundColor(.white)
                                        
                                    }
                                    
                                }
                                .padding()
                            }
                            .background(Color("button").opacity(0.6))
                            .cornerRadius(25)
                            .padding(.vertical,8)
                            
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    HStack{
                                        Image("books")
                                            .renderingMode(.original)
                                        
                                        Text("Angry")
                                        
                                            .foregroundColor(.white)
                                    }
                                    
                                    
                                }
                                .padding()
                            }
                            .background(Color("button").opacity(0.6))
                            .cornerRadius(25)
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    HStack{
                                        Image("cat")
                                            .renderingMode(.original)
                                        
                                        Text("Confused")
                                        
                                            .foregroundColor(.white)
                                    }
                                    
                                }
                                .padding()
                            }
                            .background(Color("button").opacity(0.6))
                            .cornerRadius(25)
                            
                            
                            
                        }
                        .padding(.top, 20)
                        .padding(.bottom, 6)
                        
                        Spacer(minLength: 0)
                        
                        HStack(spacing: 10){
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    HStack{
                                        Image("brain")
                                            .renderingMode(.original)
                                        
                                        Text("Excited")
                                        
                                            .foregroundColor(.white)
                                    }
                                    
                                    
                                    
                                }
                                .padding()
                            }
                            .background(Color("button").opacity(0.6))
                            .cornerRadius(25)
                            .padding(.vertical,8)
                            
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    HStack{
                                        Image("target")
                                            .renderingMode(.original)
                                        
                                        Text("Eager")
                                        
                                            .foregroundColor(.white)
                                    }
                                    
                                    
                                }
                                .padding()
                            }
                            .background(Color("button").opacity(0.6))
                            .cornerRadius(25)
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    HStack{
                                        Image("beetle")
                                            .renderingMode(.original)
                                        
                                        Text("Happy")
                                        
                                            .foregroundColor(.white)
                                    }
                                    
                                    
                                }
                                .padding()
                            }
                            
                            
                            .background(Color("button").opacity(0.6))
                            .cornerRadius(25)
                        }
                        
                        HStack(spacing: 10){
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    HStack{
                                        Image("books")
                                            .renderingMode(.original)
                                        
                                        Text("Focused")
                                        
                                            .foregroundColor(.white)
                                    }
                                    
                                    
                                    
                                }
                                .padding()
                            }
                            .background(Color("button").opacity(0.6))
                            .cornerRadius(25)
                            .padding(.vertical,8)
                            
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    HStack{
                                        Image("cat")
                                            .renderingMode(.original)
                                        
                                        Text("Yay")
                                        
                                            .foregroundColor(.white)
                                    }
                                    
                                    
                                }
                                .padding()
                            }
                            .background(Color("button").opacity(0.6))
                            .cornerRadius(25)
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    HStack{
                                        Image("brain")
                                            .renderingMode(.original)
                                        
                                        Text("Content")
                                            .foregroundColor(.white)
                                    }
                                    
                                    
                                }
                                .padding()
                            }
                            
                            
                            .background(Color("button").opacity(0.6))
                            .cornerRadius(25)
                        }
                        
                        VStack{
                            
                            TextField("Something else:", text: $feelings)
                                .padding()
                                .frame(width: 345, height: 50)
                            
                                .background(Color(.white).opacity(0.9))
                            
                            
                                .cornerRadius(10)
                                .padding(.vertical)
                            
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack{
                                    
                                    
                                    NavigationLink(destination: DetailView().navigationBarHidden(true), label: {
                                        
                                        Text("Continue")
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .frame(width: 345, height: 50)
                                            .background(Color("Orange"))
                                        
                                            .cornerRadius(50)
                                    })
                                    
                                    
                                }
                                .padding(.vertical, 5)
                                
                                
                                
                            }
                            
                            
                            
                        }
                        
                        
                        
                    }
                    
                }
                
                
                
                
            }
            
            .edgesIgnoringSafeArea(.all)
            .statusBar(hidden: true)
            .animation(.default)
            .background(Color("new"))
            
        }
    }
            
}
    
    
struct CustomShape : Shape {
    
    var corner : UIRectCorner
    var radii : CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
