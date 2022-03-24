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
        
        // Tap recognizer to dismiss keyboard
        let tapGestureReconizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        tapGestureReconizer.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGestureReconizer)
    }
    
    @objc func buttonTapped() {
//        let vc = LoansVC()
//        navigationController?.pushViewController(vc, animated: true)
        tabBarController?.selectedIndex = 0
    }
    
    // Dismiss keyboard
    @objc private func tap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}
