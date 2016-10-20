//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}


protocol ProvideAccess {
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool
    
}


extension BankVault {
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        
        if !password.isEmpty || password.count < 10 {
            
            for (index, number) in password.enumerated() {
                
                if index % 2 == 0 && number % 2 == 0 {
                    
                    return true
                }
                return false
            }
        }
        return false
    }
}
            
