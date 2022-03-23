//
//  CardFilterVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 23.03.2022.
//

import UIKit
import SnapKit

class CardFilterVC: UIViewController {
    
    var cardFilterView: CardFilterView!
    var cardType = "debit"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardFilterView = CardFilterView()
        view.addSubview(cardFilterView)
        cardFilterView.translatesAutoresizingMaskIntoConstraints = false
        cardFilterView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide).inset(UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10))
        }
        
        cardFilterView.cardsButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        cardFilterView.segmentedControl.addTarget(self, action: #selector(segmentChanged), for: .valueChanged)
        
        navigationController?.setToolbarHidden(false, animated: false)
    }
    
    @objc func segmentChanged() {
        if cardFilterView.segmentedControl.selectedSegmentIndex == 0 {
            cardType = "debit"
        } else if cardFilterView.segmentedControl.selectedSegmentIndex == 1 {
            cardType = "credit"
        }
    }
    
    @objc func buttonTapped() {
        let vc = CardsVC()
        vc.cardType = self.cardType
        navigationController?.pushViewController(vc, animated: true)
    }
}
