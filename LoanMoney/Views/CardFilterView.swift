//
//  CardFilterView.swift
//  LoanMoney
//
//  Created by Nick Sagan on 22.03.2022.
//

import UIKit

class CardFilterView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var cardsButton: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }

    func initSubviews() {
        let nib = UINib(nibName: "CardFilterView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
        cardsButton.setTitleColor(.white, for: .normal)
    }
    
}
