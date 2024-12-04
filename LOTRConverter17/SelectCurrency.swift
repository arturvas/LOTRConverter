//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Artur Vasconcelos on 14/11/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
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
                IconGrid(selectedCurrency: $topCurrency)
                
//                Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                
//                Currency icons
                IconGrid(selectedCurrency: $bottomCurrency)
                
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
//        to test the binding
//        .onTapGesture {
//            print("SelectedCurrency topCurrency: \(topCurrency)")
//            print("SelectedCurrency bottomCurrency: \(bottomCurrency)")
//        }
    }
}

#Preview {
    @Previewable @State var topCurrency: Currency = .silverPenny
    @Previewable @State var bottonCurerncy: Currency = .goldPenny
    
    SelectCurrency(topCurrency: $topCurrency, bottomCurrency: $bottonCurerncy)
}
