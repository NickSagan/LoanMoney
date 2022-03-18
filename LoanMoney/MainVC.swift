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
        createToolbar()
    }
    
    @objc func ProfileButtonTapped() {
        print("tapped")
    }
    
}

//MARK: - Toolbar & UIBarButtonItems

extension MainVC {
    
    func createToolbar() {
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        let loansButton = createBarButton(imageName: "loans", title: "Займы", selector: #selector(ProfileButtonTapped))
        let cardsButton = createBarButton(imageName: "cards", title: "Карты", selector: #selector(ProfileButtonTapped))
        let calculatorButton = createBarButton(imageName: "calculator", title: "Калькулятор", selector: #selector(ProfileButtonTapped))
        let infoButton = createBarButton(imageName: "info", title: "Инфо", selector: #selector(ProfileButtonTapped))
        let arr: [Any] = [flexibleSpace, loansButton, flexibleSpace, cardsButton, flexibleSpace, calculatorButton, flexibleSpace, infoButton, flexibleSpace]
        setToolbarItems(arr as? [UIBarButtonItem] ?? [UIBarButtonItem](), animated: true)
        navigationController?.setToolbarHidden(false, animated: false)
    }

    func createBarButton(imageName: String, title: String, selector: Selector) -> UIBarButtonItem {
        let customButton: UIButton = UIButton(type: .custom)
        customButton.setImage((UIImage(named: imageName)), for: .normal)
        customButton.setTitle(title, for: .normal)
        customButton.titleLabel?.font = UIFont(name: "Verdana", size: 12)
        customButton.setTitleColor(UIColor.black, for: .normal)
        customButton.sizeToFit()
        customButton.centerLabelVerticallyWithPadding(spacing: 5)
        customButton.addTarget(self, action: selector, for: .touchUpInside)
        return UIBarButtonItem(customView: customButton)
    }
}

extension UIButton {
    func centerLabelVerticallyWithPadding(spacing:CGFloat) {
        // update positioning of image and title
        let imageSize = self.imageView!.frame.size
        self.titleEdgeInsets = UIEdgeInsets(top:0,
            left:-imageSize.width,
            bottom:-(imageSize.height + spacing),
            right:0)
        let titleSize = self.titleLabel!.frame.size
        self.imageEdgeInsets = UIEdgeInsets(top:-(titleSize.height + spacing),
            left:0,
            bottom: 0,
            right:-titleSize.width)

        // reset contentInset, so intrinsicContentSize() is still accurate
        let trueContentSize = self.titleLabel!.frame.union(self.imageView!.frame).size
        let oldContentSize = self.intrinsicContentSize
        let heightDelta = trueContentSize.height - oldContentSize.height
        let widthDelta = trueContentSize.width - oldContentSize.width
        self.contentEdgeInsets = UIEdgeInsets(top:heightDelta/2.0,
            left:widthDelta/2.0,
            bottom:heightDelta/2.0,
            right:widthDelta/2.0)
    }
}
