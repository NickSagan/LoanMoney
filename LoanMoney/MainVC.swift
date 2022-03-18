//
//  ViewController.swift
//  LoanMoney
//
//  Created by Nick Sagan on 18.03.2022.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Займ"
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)

        let homeButton = UIBarButtonItem(title: "H", style: .plain, target: self, action: #selector(ProfileButtonTapped))

        let flexibleSpace1 = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)

        let addButton = UIBarButtonItem(title: "+", style: .plain, target: self, action: #selector(ProfileButtonTapped))

        let flexibleSpace2 = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)

        let loveButton = UIBarButtonItem(title: "Love", style: .plain, target: self, action: #selector(ProfileButtonTapped))
        
        let flexibleSpace3 = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)

        let arr: [Any] = [flexibleSpace, homeButton, flexibleSpace1, addButton, flexibleSpace2, loveButton, flexibleSpace3]

        setToolbarItems(arr as? [UIBarButtonItem] ?? [UIBarButtonItem](), animated: true)
        navigationController?.setToolbarHidden(false, animated: false)
    }

    @objc func ProfileButtonTapped() {
        
    }
}

