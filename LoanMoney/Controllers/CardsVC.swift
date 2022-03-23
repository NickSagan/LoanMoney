//
//  CardsVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 23.03.2022.
//

import UIKit

class CardsVC: UIViewController {
    
    var cardType = "debit"
    private var refreshControl: UIRefreshControl!
    private var collectionView: UICollectionView!
    let data = Data()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.popViewController(animated: true)
    }
}

//MARK: - COLLECTION VIEW SETUP

extension CardsVC {
    
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
        usleep(UInt32(0.5))
        refreshControl.endRefreshing()
    }
}

//MARK: - UICollectionViewDataSource

extension CardsVC: UICollectionViewDataSource {
    
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

extension CardsVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        UIApplication.shared.open(data.loans[indexPath.row].url, options: [:])
    }
}
