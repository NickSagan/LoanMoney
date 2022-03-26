//
//  NewDebtView.swift
//  LoanMoney
//
//  Created by Nick Sagan on 26.03.2022.
//

import UIKit

class NewDebtView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var repaymentDate: UIDatePicker!
    @IBOutlet weak var issueDate: UIDatePicker!
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var yellowButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }

    func initSubviews() {
        let nib = UINib(nibName: "NewDebtView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
        yellowButton.setTitleColor(.white, for: .normal)
    }
}
