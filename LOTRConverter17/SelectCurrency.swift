//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Artur Vasconcelos on 14/11/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var topCurrency: Currency
    @State var botttonCurrency: Currency
    
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
                IconGrid(selectedCurrency: topCurrency)
                
//                Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                
//                Currency icons
                IconGrid(selectedCurrency: botttonCurrency)
                
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
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .silverPenny, botttonCurrency: .goldPiece)
}
