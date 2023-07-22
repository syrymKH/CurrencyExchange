//
//  MoneyExchangeClass.swift
//  myCurrencyExchangeApp
//
//  Created by Syrym Khamzin on 16.03.2023.
//

import Foundation
import UIKit

class MoneyExchangeClass {
    let currencyRates = [MoneyExchangeStructFromJSON]()
    
    func loadRandomData() -> MoneyExchangeStructFromJSON {
        guard let randomRate = currencyRates.randomElement() else {
            return MoneyExchangeStructFromJSON(rub_buy: 0.0, rub_sale: 0.0, usd_buy: 0.0, usd_sale: 0.0, euro_buy: 0.0, euro_sale: 0.0, date_update: "--", time_update: "-- : --")
        }
        
        return randomRate
    }
}
