//
//  SideMenuVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 25.03.2022.
//

import UIKit
import SnapKit

class SideMenuVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButtons()
        
    }
    
    func createButtons() {
        let creditHistory = UIButton()
        creditHistory.titleLabel?.text = "Кредитная история"
        creditHistory.tintColor = .black
        creditHistory.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(creditHistory)
        
        let news = UIButton()
        news.titleLabel?.text = "Новости"
        news.tintColor = .black
        news.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(news)
        
        let debtBook = UIButton()
        debtBook.titleLabel?.text = "Долговая книга"
        debtBook.tintColor = .black
        debtBook.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(debtBook)
        
        let companies = UIButton()
        companies.titleLabel?.text = "Компании"
        companies.tintColor = .black
        companies.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(companies)
    }
}
