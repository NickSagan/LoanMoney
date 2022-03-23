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
    let data = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardFilterView = CardFilterView()
        view.addSubview(cardFilterView)
        cardFilterView.translatesAutoresizingMaskIntoConstraints = false
        cardFilterView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide).inset(UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10))
        }
        cardFilterView.cardsButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        navigationController?.setToolbarHidden(false, animated: false)
    }
    
    @objc func buttonTapped() {
        let vc = CardsVC()
        if cardFilterView.segmentedControl.selectedSegmentIndex == 0 {
            vc.cards = data.creditCards
        } else {
            vc.cards = data.debitCards
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
