//
//  InfoVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 23.03.2022.
//

import UIKit
import SideMenu

class InfoVC: UIViewController {

    let info: UITextView = {
        let tv = UITextView()
        tv.textColor = .black
        tv.font = UIFont(name: "verdana", size: 14)
        tv.isEditable = false
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Информация"
        info.text = SharedData.instance.infotext

        view.addSubview(info)
        info.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            info.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            info.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            info.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            info.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
        
        addRightBarButton()
    }
    
    func addRightBarButton() {
        let item: UIBarButtonItem = {
            let btn = UIButton(type: .custom)
            btn.setBackgroundImage(UIImage(named: "sideMenu"), for: .normal)
            btn.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
            btn.addTarget(self, action: #selector(sideMenuButton), for: .touchUpInside)
            let item  = UIBarButtonItem(customView: btn)
            return item
        }()
        
        navigationItem.setRightBarButton(item, animated: true)
    }
    
    @objc func sideMenuButton() {
        let menu = SideMenuNavigationController(rootViewController: RightSideMenu())
        menu.presentationStyle = .menuSlideIn
        present(menu, animated: true, completion: nil)
    }
}
