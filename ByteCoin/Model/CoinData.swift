//
//  CoinData.swift
//  ByteCoin
//
//  Created by Michael on 10/1/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData : Decodable {
    // The name of the coin i.e. BitCoin
    let asset_id_base: String
    // The currencty i.e. EUR
    let asset_id_quote: String
    // The rate
    let rate: Float
}
