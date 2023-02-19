


import SwiftUI

struct ExampleView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack{
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Image("lol")
                   .resizable()
                .frame(height: 400)
                
                HStack{
                    
                    Text("Analyzing your      thoughts...")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                
                    
                }
                .padding(.horizontal, 60)
                .padding(.trailing, -50)
                .padding(.top, -50)
            }
            

            
           
        }
        
        
        
        .background(Color("new"))
    }
    
}
    
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}


