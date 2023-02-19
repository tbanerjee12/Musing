


import SwiftUI

struct MicView: View {
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    
                    HStack{
                        
                        Text("I'm listening...")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        
                    }
                    .padding(.horizontal, 30)
                    .padding(.top,70)
                    .padding(.bottom, 70)
                    
                    
                    Image("group2")
                        .padding(.bottom, 100)
                    
                    
                    NavigationLink(destination: DetailView().navigationBarHidden(true), label: {
                        
                        
                        Image("mic2")
                        
                    })
                    
                }
                
                
                
            }
            
            
            
            
            .background(Color("new"))
        }
    }
    
}
    
struct MicView_Previews: PreviewProvider {
    static var previews: some View {
        MicView()
    }
}




