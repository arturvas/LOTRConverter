import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    
    
    var body: some View {
        ZStack{
//            Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
//                Prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
//                Currenci exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
//                Currency conversion section
                
                
                HStack{
//                    Left conversion section
                    
                    VStack {
//                        Currency
                        
                        HStack{
//                            Currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
//                            Currency text
                                Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
//                        Textfield
                        Text("Textfield")
                        
                    }
//                    Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
//                    Right conversion section
                    
                    VStack {
//                        Currency
                        
                        HStack{
//                            Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
//                            Currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                        }
//                        Textfield
                        Text("Textfield")
                        
                    }
                }
                
                Spacer()
                
//                Info Button
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
            }
//            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
