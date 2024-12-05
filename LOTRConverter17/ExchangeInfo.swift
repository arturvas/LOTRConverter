//
//  ExchangeInfo.swift
//  LOTRConverter17
//
//  Created by Artur Vasconcelos on 14/11/24.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
//            Background parchment image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
//                Tittle text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
//                Description Text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you cant exchange all the known currencies in the world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
//                Exhcange rates (it's called instances)
                ExchangeRate(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)

                ExchangeRate(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
                
                ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
                
                ExchangeRate(leftImage: .silverpenny, text: "1 Silver Penny = 4 Copper Piece", rightImage: .copperpiece)
                
                ExchangeRate(leftImage: .copperpiece, text: "1 Copper Piece = 4 Copper Pennies", rightImage: .copperpenny)
                
//                Done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
