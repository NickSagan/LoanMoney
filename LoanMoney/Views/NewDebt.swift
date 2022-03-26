//
//  NewDebt.swift
//  LoanMoney
//
//  Created by Nick Sagan on 26.03.2022.
//

import UIKit

class NewDebt: UIView {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var repaymentDate: UIDatePicker!
    @IBOutlet weak var issueDate: UIDatePicker!
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var name: UITextField!
}
