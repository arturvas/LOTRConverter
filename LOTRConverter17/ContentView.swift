import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
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
//                        .padding(.bottom, -5)
                        
//                        Textfield
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                        
                        
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
//                        .padding(.bottom, -5)
                        
//                        Textfield
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                        
                    }
                }
                .padding()
                .background(Color.black.opacity(0.5))
                .clipShape(.rect(cornerRadius: 15))
                .padding(.horizontal)
                
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
            }
        .sheet(isPresented: $showExchangeInfo){
            ExchangeInfo()
        }
    }
}

#Preview {
    ContentView()
}
