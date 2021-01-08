//
//  StockDataViewController.swift
//  ByteCoin
//
//  Created by Michael on 7/1/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


import UIKit

class StockDataViewController: UIViewController {
    
    func getStockData() {
        // Copied from the code
        let headers = [
            "x-rapidapi-key": "bf339c2e97msh11edeabec4a5553p17a016jsn9fba6fbb5738",
            "x-rapidapi-host": "apidojo-yahoo-finance-v1.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://apidojo-yahoo-finance-v1.p.rapidapi.com/stock/v2/get-financials?symbol=AMRN&region=US")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error!)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse!)
            }
        })

        dataTask.resume()
        
    }
        
    
}
    
    

