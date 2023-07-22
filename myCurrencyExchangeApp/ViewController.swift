//
//  ViewController.swift
//  myCurrencyExchangeApp
//
//  Created by Syrym Khamzin on 16.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdBuy: UILabel!
    @IBOutlet weak var usdSell: UILabel!
    @IBOutlet weak var euroBuy: UILabel!
    @IBOutlet weak var euroSell: UILabel!
    @IBOutlet weak var rubBuy: UILabel!
    @IBOutlet weak var rubSell: UILabel!
    @IBOutlet weak var lastUpdataed: UILabel!
    
    let moneyClass = MoneyExchangeClass()
    var jsonArrayData = [MoneyExchangeStructFromJSON]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadJSONFromURL()
    }

    @IBAction func mapAction(_ sender: UIButton) {
        let mapView = MapView()
        navigationController?.pushViewController(mapView, animated: true)
    }
    
    @IBAction func updateAction(_ sender: UIButton) {
        downloadJSONFromURL()
    }
    
    func loadDataFromJSONData(data: MoneyExchangeStructFromJSON) {
        usdBuy.text = "\(data.usd_buy)"
        usdSell.text = "\(data.usd_sale)"
        euroBuy.text = "\(data.euro_buy)"
        euroSell.text = "\(data.euro_sale)"
        rubBuy.text = "\(data.rub_buy)"
        rubSell.text = "\(data.rub_sale)"
        lastUpdataed.text = "Last updated \(data.date_update), @ \(data.time_update)"
    }
    
    func downloadJSONFromURL() {
        let jsonURL = "https://it-guru.kz/json/money_exchnge/"
        
        guard let validURL = URL(string: jsonURL) else {return}
        
        URLSession.shared.dataTask(with: validURL) { jsonData, response, sessionError in
            guard sessionError == nil else {
                print("sessionError", sessionError?.localizedDescription ?? "")
                return
            }
            
            guard let validJsonData = jsonData else {
                return
            }
            
            do {
                self.jsonArrayData = try
                JSONDecoder().decode([MoneyExchangeStructFromJSON].self, from: validJsonData)
                DispatchQueue.main.async {
                    if let random = self.jsonArrayData.randomElement() {
                        self.loadDataFromJSONData(data: random)
                    }
                }
            } catch {
                print("Load JSONData Error", error.localizedDescription)
            }
        }.resume()
    }
}
