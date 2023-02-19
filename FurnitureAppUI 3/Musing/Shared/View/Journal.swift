import SwiftUI



struct JournalView: View {
//    @State var text: String = "Just let it all out, whether your worries or affirmations! I’m here for you."
//
@State private var text = ""
   var body: some View {
     
       NavigationView{
           
           VStack {
               
               Text("What’s on your mind?")
                   .font(.title)
                   .fontWeight(.bold)
                   .foregroundColor(Color.white)
                   .padding(EdgeInsets(top: 170, leading: -50, bottom: -5, trailing: 10))
                   .foregroundColor(.white)
               
               
               HStack{
                   
                   Button(action:{
                   }) {
                       Image("text")
                           .resizable()
                           .frame(width: 107, height: 110)
                   }
                   
                   NavigationLink(destination: MicView().navigationBarHidden(true), label: {
                       
                       Image("speech")
                           .resizable()
                           .frame(width: 55.54, height: 87)
                           .padding(.top, 30)
                           .padding(.leading, 50)
                   })
                   
                   
                   Button(action:{
                   }) {
                       Image("vr")
                           .resizable()
                           .frame(width: 55.54, height: 87)
                           .padding(.leading, 70)
                           .padding(.top, 30)
                           .padding(.trailing, 20)
                   }
                   
                   
               }
               .padding(.leading, -20)
               .padding(.horizontal, 100)
               .padding(.bottom, 15)
               
               
               
               
               
               TextField("Just let it all out.....", text: $text)
               
               
                   .padding()
               //.padding(.top, -50)
                   .frame(width: 350, height: 300)
                   .background(Color(.white).opacity(0.9))
               
                   .foregroundColor(.black)
                   .cornerRadius(10)
               //.padding(.vertical)
               
               
               Spacer()
               
               
               
               
               NavigationLink(destination: DetailView().navigationBarHidden(true), label: {
                   
                       Image("done")
                           .resizable()
                           .frame(width: 60, height: 60)
                           .padding(.leading, 20)
                           .padding(.bottom, 300)
                           .padding(.trailing, 10)
                       
                
                   
                   //.padding(.trailing, -100)
                   
               })
               .padding(.top)
               .padding(.leading, 290)
           }
           
           //.padding(.top, 20)
           .background(Color("new"))
           
           
       }
    }
   }


struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}



