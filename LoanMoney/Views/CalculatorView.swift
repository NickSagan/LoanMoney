//
//  CalculatorView.swift
//  LoanMoney
//
//  Created by Nick Sagan on 24.03.2022.
//

import UIKit

class CalculatorView: UIView {

    @IBOutlet var contentView: UIView!
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
        let nib = UINib(nibName: "CalculatorView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
        yellowButton.setTitleColor(.white, for: .normal)
    }
}
