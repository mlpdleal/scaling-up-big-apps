//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Manoel Leal on 01/06/22.
//

import Foundation

struct ExpenseItem: Identifiable, Codable{
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
