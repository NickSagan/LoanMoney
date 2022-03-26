//
//  TabBarVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 23.03.2022.
//

import UIKit

class TabBarVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: LoansVC())
        let vc2 = UINavigationController(rootViewController: CardFilterVC())
        let vc3 = UINavigationController(rootViewController: CalcVC())
        let vc4 = UINavigationController(rootViewController: InfoVC())
        
        vc1.title = "Займы"
        vc2.title = "Карты"
        vc3.title = "Калькулятор"
        vc4.title = "Информация"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4], animated: false)
        
        let icons = ["loans", "cards", "calc", "info"]
        
        guard let items = tabBarVC.tabBar.items else { print("Empty Items"); return }
        guard items.count == icons.count else { print("Icons != Items"); return }
        
        for i in 0..<items.count {
            items[i].image = UIImage(named: icons[i])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
}
