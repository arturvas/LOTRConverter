//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Artur Vasconcelos on 14/11/24.
//

import SwiftUI

//selected icons grid
struct IconGrid: View {
    @Binding var selectedCurrency: Currency

    var body: some View {
//        Currency icons
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                if selectedCurrency == currency {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            selectedCurrency = currency
//                            to test the binding
//                            print("IconGrid Currency: \(selectedCurrency)")
                        }
                }
            }
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var selectedCurrency: Currency = .silverPiece
    
    IconGrid(selectedCurrency: $selectedCurrency)
}
