//
//  DebtBookVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 26.03.2022.
//

import UIKit
import SnapKit

class DebtBookVC: UIViewController {
    
    var tableView: UITableView!
    
    let yellowButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: "yellowButton"), for: .normal)
        button.setTitle("  Новый долг", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setImage(UIImage(named: "plus"), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Долговая книга"
        addTableViewAndButton()
        yellowButton.addTarget(self, action: #selector(yellowButtonTapped), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    @objc func yellowButtonTapped() {
        let vc = NewDebtVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func addTableViewAndButton() {
        tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        yellowButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        view.addSubview(yellowButton)
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
        }
        
        yellowButton.snp.makeConstraints { make in
            make.top.equalTo(tableView.snp.bottom).offset(20)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-20)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(50)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
        }
    }
}

//MARK: - TABLE VIEW DATA SOURCE & DELEGATE

extension DebtBookVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        SharedData.instance.debts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let debt = SharedData.instance.debts[indexPath.row]
        
        cell.textLabel?.numberOfLines = 2
        cell.textLabel?.text = "\(debt.name) \(debt.issue.dateString()) \(debt.type)\n\(debt.amount) руб. до \(debt.repayment.dateString())"
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            SharedData.instance.debts.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
}

// https://stackoverflow.com/questions/24070450/how-to-get-the-current-time-as-datetime

extension Date {
    
    func dateString() -> String {
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yyyy"
        let dateString = df.string(from: self)
        return dateString
    }
}
