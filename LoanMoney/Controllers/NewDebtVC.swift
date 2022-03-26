//
//  NewDebtVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 26.03.2022.
//

import UIKit
import SnapKit
import SideMenu

class NewDebtVC: UIViewController {
    
    var newDebtView: NewDebtView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Добавить долг"
        newDebtView = NewDebtView()
        view.addSubview(newDebtView)
        newDebtView.translatesAutoresizingMaskIntoConstraints = false
        newDebtView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.bottom.equalTo(view.snp.bottom)
            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
        }
        newDebtView.yellowButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    
    @objc func buttonTapped() {
        let vc = CardsVC()
        if newDebtView.segmentedControl.selectedSegmentIndex == 0 {
            vc.cards = Data.instance.creditCards
            vc.title = "Кредитные карты"
        } else {
            vc.cards = Data.instance.debitCards
            vc.title = "Дебетовые карты"
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
