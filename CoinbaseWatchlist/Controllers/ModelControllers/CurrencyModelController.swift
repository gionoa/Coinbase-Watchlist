//
//  CurrenciesModelController.swift
//  CoinbaseWatchlist
//
//  Created by gnoa001 on 4/17/19.
//  Copyright © 2019 Giovanni Noa. All rights reserved.
//

import Foundation

class CurrencyModelController {
    
    private (set) var dataSource = [Currency]()
    
    var filteredDataSource = [Currency]()
    
    func fetchCurrencies(completion: @escaping (Error?) -> Void) {
        CoinbaseAPI.fetchCurrencies { (result) in
            switch result {
                case .success(let currencies):
                    self.dataSource = currencies
                    completion(nil)
                case .failure(let error):
                completion(error)
            }
        }
    }
    
    // number of rows in section 
}