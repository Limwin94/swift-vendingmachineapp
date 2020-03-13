//
//  Drink.swift
//  VendingMachineApp
//
//  Created by 임승혁 on 2020/03/11.
//  Copyright © 2020 임승혁. All rights reserved.
//

import Foundation

class Drink {
    private let brand: String
    private let capacity: Int
    private let price: Int
    private let name: String
    private let manufacturingDate: Date
    private let expiryDate: Date
    
    init(brand: String, capacity: Int, price: Int, name: String, manufacturingDate: Date = Date(), expiryDate: Date) {
        self.brand = brand
        self.capacity = capacity
        self.price = price
        self.name = name
        self.manufacturingDate = manufacturingDate
        self.expiryDate = expiryDate
    }
}

extension Drink: CustomStringConvertible {
    var description: String {
        return "\(brand), \(capacity)ml, \(price)원, \(name), \(Date().toString(date: manufacturingDate)), \(Date().toString(date: expiryDate))"
    }
}

extension Date {
    func toString(date:Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        return formatter.string(from: date)
    }
}
