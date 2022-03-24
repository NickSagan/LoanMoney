//
//  CalcVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 23.03.2022.
//

import UIKit
import SnapKit

class CalcVC: UIViewController {
    
    var calculatorView: CalculatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Калькулятор"
        calculatorView = CalculatorView()
        view.addSubview(calculatorView)
        calculatorView.translatesAutoresizingMaskIntoConstraints = false
        calculatorView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.bottom.equalTo(view.snp.bottom)
            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
        }
        calculatorView.yellowButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        let vc = LoansVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
