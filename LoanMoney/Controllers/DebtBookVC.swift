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
        button.frame.size = CGSize(width: 320, height: 50)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Долговая книга"
        addTableViewAndButton()
        yellowButton.addTarget(self, action: #selector(yellowButtonTapped), for: .touchUpInside)
    }
    
    @objc func yellowButtonTapped() {
        
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
            make.bottom.equalTo(view.snp.bottom)
            make.centerX.equalTo(view.snp.centerX)
        }
    }
}

//MARK: - TABLE VIEW DATA SOURCE & DELEGATE

extension DebtBookVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Data.instance.debts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = Data.instance.debts[indexPath.row].name
        return cell
    }
}
