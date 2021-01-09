//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateCoin(_ coinManager: CoinManager, _ coin: CoinModel) -> Void
    func didFailWithError(error: Error)
}


struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "2FB21290-7ED1-4F9F-852D-2562102452D1"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    var delegate: CoinManagerDelegate?
    
    func getCoinPrice(for currenct: String)  {
        let urlString = ""
        preformRequest(with: urlString)
    }
    
    func preformRequest(with urlString:  String) {
        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            
            // 2. Creates the task (which is in suspended state) (we can also remove the :Data? parrt
            let task = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    print(safeData)
//                    if let coin = self.parseJSON(safeData) {
//                        self.delegate?.didUpdateCoin(self, coin)
//                    }
                    
                }
            }
            // 3. Start the task
            task.resume()
        }
    }
    
    func parseJSON(_ coinData: Data) -> CoinModel? {
        return nil
    }
}
