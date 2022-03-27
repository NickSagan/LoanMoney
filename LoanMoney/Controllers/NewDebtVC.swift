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
        
        // Tap recognizer to dismiss keyboard
        let tapGestureReconizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        tapGestureReconizer.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGestureReconizer)
    }

    // Dismiss keyboard
    @objc private func tap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func buttonTapped() {
        var type: String
        if newDebtView.segmentedControl.selectedSegmentIndex == 0 {
            type = "дал(a) в долг"
        } else {
            type = "взял(a) в долг"
        }
        
        var name = newDebtView.name.text ?? ""
        if name == "" { name = "Кто-то"}
        
        let amount = Int(newDebtView.amount.text ?? "0") ?? 0
        let issue = newDebtView.issueDate.date
        let repayment = newDebtView.repaymentDate.date
        
        let debt = Debt(name: name, amount: amount, issue: issue, repayment: repayment, type: type)
        SharedData.instance.debts.append(debt)
        
        navigationController?.popViewController(animated: true)
    }
}
