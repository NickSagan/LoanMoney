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
        title = "Займы"
        setupCollectionView()
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
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.itemSize.width = self.view.frame.width - 10
        layout.itemSize.height = 220
        return layout
    }
    
    @objc func refresh(_ sender: AnyObject) {
        usleep(UInt32(0.5))
        refreshControl.endRefreshing()
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
