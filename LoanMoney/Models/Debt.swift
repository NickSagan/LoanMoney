//
//  Debt.swift
//  LoanMoney
//
//  Created by Nick Sagan on 26.03.2022.
//

import Foundation

struct Debt {
    let name: String
    let amount: Int
    let issue: Date
    let repayment: Date
    let type: DebtType
}

enum DebtType: String {
    case Debit = "Дал в долг"
    case Credit = "Взял в долг"
}
