//
//  ViewController.swift
//  LoanMoney
//
//  Created by Nick Sagan on 18.03.2022.
//

import UIKit

class LoansVC: UIViewController {
    
    private var refreshControl: UIRefreshControl!
    private var collectionView: UICollectionView!
    let data = Data()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Займ"
        
        setupCollectionView()
        createToolbar()
    }
    
    @objc func ProfileButtonTapped() {
        print("tapped")
    }
    
}

//MARK: - COLLECTION VIEW SETUP

extension LoansVC {
    
    func setupCollectionView() {
        let view = UIView()
        view.backgroundColor = .white
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: setLayout())
        collectionView?.dataSource = self
        collectionView?.delegate = self
        collectionView?.register(LoanCell.self, forCellWithReuseIdentifier: "cell")
        collectionView?.backgroundColor = UIColor.white
        
        refreshControl = UIRefreshControl()
        collectionView?.refreshControl = refreshControl
        refreshControl?.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
        
        view.addSubview(collectionView!)
        self.view = view
    }
    
    func setLayout() -> UICollectionViewFlowLayout {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.itemSize.width = self.view.frame.width - 20
        layout.itemSize.height = 200
        return layout
    }
    
    @objc func refresh(_ sender: AnyObject) {
        
    }
}

//MARK: - UICollectionViewDataSource

extension LoansVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.loans.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LoanCell

        cell.percent.text = data.loans[indexPath.row].percent
        cell.underBlue.text = data.loans[indexPath.row].blue
        cell.underViolet.text = data.loans[indexPath.row].violet
        cell.underYellow.text = data.loans[indexPath.row].yellow
        cell.logo.image = UIImage(named: data.loans[indexPath.row].logo)

        return cell
    }
}

//MARK: - UICollectionViewDelegate

extension LoansVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        UIApplication.shared.open(data.loans[indexPath.row].url, options: [:])
    }
}

//MARK: - Toolbar & UIBarButtonItems

extension LoansVC {
    
    func createToolbar() {
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        let loansButton = createBarButton(imageName: "loans", title: "Займы", selector: #selector(ProfileButtonTapped))
        let cardsButton = createBarButton(imageName: "cards", title: "Карты", selector: #selector(ProfileButtonTapped))
        let calculatorButton = createBarButton(imageName: "calc", title: "Калькулятор", selector: #selector(ProfileButtonTapped))
        let infoButton = createBarButton(imageName: "info", title: "Инфо", selector: #selector(ProfileButtonTapped))
        let arr: [Any] = [flexibleSpace, loansButton, flexibleSpace, cardsButton, flexibleSpace, calculatorButton, flexibleSpace, infoButton, flexibleSpace]
        setToolbarItems(arr as? [UIBarButtonItem] ?? [UIBarButtonItem](), animated: true)
        navigationController?.setToolbarHidden(false, animated: false)
        navigationController?.toolbar.barTintColor = .white
//        navigationController?.navigationBar.barTintColor = .white

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
