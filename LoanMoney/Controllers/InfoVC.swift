//
//  InfoVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 23.03.2022.
//

import UIKit

class InfoVC: UIViewController {

    let info: UITextView = {
        let tv = UITextView()
        tv.textColor = .black
        tv.font = UIFont(name: "verdana", size: 14)
        tv.isEditable = false
        return tv
    }()
    
    let data = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Информация"
        info.text = data.infotext

        view.addSubview(info)
        info.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            info.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            info.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            info.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            info.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
}
