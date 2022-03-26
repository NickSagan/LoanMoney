//
//  CardFilterVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 23.03.2022.
//

import UIKit
import SnapKit
import SideMenu

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
        addRightBarButton()
    }
    
    func addRightBarButton() {
        let item: UIBarButtonItem = {
            let btn = UIButton(type: .custom)
            btn.setBackgroundImage(UIImage(named: "sideMenu"), for: .normal)
            btn.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
            btn.addTarget(self, action: #selector(sideMenuButton), for: .touchUpInside)
            let item  = UIBarButtonItem(customView: btn)
            return item
        }()
        
        navigationItem.setRightBarButton(item, animated: true)
    }
    
    @objc func sideMenuButton() {
        let menu = SideMenuNavigationController(rootViewController: RightSideMenu())
        menu.presentationStyle = .menuSlideIn
        present(menu, animated: true, completion: nil)
    }
    
    @objc func buttonTapped() {
        let vc = CardsVC()
        if cardFilterView.segmentedControl.selectedSegmentIndex == 0 {
            vc.cards = SharedData.instance.creditCards
            vc.title = "Кредитные карты"
        } else {
            vc.cards = SharedData.instance.debitCards
            vc.title = "Дебетовые карты"
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
