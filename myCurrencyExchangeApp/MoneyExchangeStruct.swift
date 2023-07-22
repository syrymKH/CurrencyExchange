//
//  MoneyExchangeStruct.swift
//  myCurrencyExchangeApp
//
//  Created by Syrym Khamzin on 16.03.2023.
//

import Foundation

struct MoneyExchangeStructFromJSON: Decodable {
    
    var rub_buy: Float
    var rub_sale: Float
    var usd_buy: Float
    var usd_sale: Float
    var euro_buy: Float
    var euro_sale: Float
    var date_update: String
    var time_update: String
}
