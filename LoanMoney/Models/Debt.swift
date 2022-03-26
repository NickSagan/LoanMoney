//
//  Debt.swift
//  LoanMoney
//
//  Created by Nick Sagan on 26.03.2022.
//

import Foundation

struct Debt: Codable {
    let name: String
    let amount: Int
    let issue: Date
    let repayment: Date
    let type: String
}
