//
//  RightSideMenu.swift
//  LoanMoney
//
//  Created by Nick Sagan on 25.03.2022.
//

import UIKit

class RightSideMenu: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.instance.sideMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = Data.instance.sideMenu[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0: UIApplication.shared.open(URL(string: "https://credistory.ru/")!, options: [:])
        case 1: let vc = NewsVC(); navigationController?.pushViewController(vc, animated: true)
        case 2: tabBarController?.selectedIndex = 2
        case 3: let vc = CompaniesVC(); navigationController?.pushViewController(vc, animated: true)
        default: print("Error: row out of index")
        }

    }
}
