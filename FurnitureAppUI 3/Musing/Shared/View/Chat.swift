import SwiftUI

struct ChatView: View {
    @State private var message = ""
    @State private var messages = [String]()
    @State var height = UIScreen.main.bounds.height

    var body: some View {
        NavigationView{
            ZStack(alignment: .top){
                
                
               
                
                VStack(alignment: .leading) {
                    // Chat history.
                    ScrollView{
                        
                        HStack{
                            
                            HStack{
                                
                                Text("Chat")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Spacer()
                            
                                
                            }
                            .padding(.horizontal, 30)
                            .padding(.top,20)
                    
                            
                            
                            
                            Spacer()
                            
                                .background(Color.white)
                                .clipShape(CustomShape(corner: .bottomLeft, radii: self.height > 800 ? 35 : 30))
                        }
                        
                        HStack(alignment: .top) {
                            Spacer()
                            VStack(alignment: .trailing) {
                                ForEach(messages, id: \.self) { message in
                                    Text(message)
                                        .padding(10)
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .padding(.vertical, 5)
                                        .padding(.horizontal, 30)
                                        .font(.system(size: 20))
                                }
                            }
                        }.padding(.vertical, 50)
                    }
                    
                    
                    // Message field.
                    HStack {
                        TextField("Message", text: $message)
                            .padding(10)
                            .background(Color.secondary.opacity(1.0))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                            .padding(.bottom, 95)
                        
                        Button(action: {
                            self.messages.append(self.message)
                            self.message = ""
                        }) {
                            Image(systemName: "arrowshape.turn.up.right")
                                .font(.system(size: 20))
                                .foregroundColor(.blue)
                        }
                        .padding()
                        .padding(.bottom, 95)
                        .disabled(message.isEmpty)
                    }
                    .padding()
                }
        
                .background(Color("new"))
                
            }
        }
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
    }
}

