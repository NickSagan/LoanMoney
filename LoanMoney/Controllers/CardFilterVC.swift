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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Карты"
        cardFilterView = CardFilterView()
        view.addSubview(cardFilterView)
        cardFilterView.translatesAutoresizingMaskIntoConstraints = false
        cardFilterView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.bottom.equalTo(view.snp.bottom)
            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
        }
        cardFilterView.cardsButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        let vc = CardsVC()
        if cardFilterView.segmentedControl.selectedSegmentIndex == 0 {
            vc.cards = Data.instance.creditCards
            vc.title = "Кредитные карты"
        } else {
            vc.cards = Data.instance.debitCards
            vc.title = "Дебетовые карты"
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
