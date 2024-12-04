//
//  CurrencyTip.swift
//  LOTRConverter17
//
//  Created by Artur Vasconcelos on 03/12/24.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Select Currency")
    
    var message: Text? = Text("You can tap the right ou left currency to bring up the Select Currency screen.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}
