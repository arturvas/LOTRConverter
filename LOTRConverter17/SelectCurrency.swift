//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Artur Vasconcelos on 14/11/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
//            Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
//                Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
//                Currency icons
                CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Peny")
                
                
//                Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
//                Currency icons
                
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
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
