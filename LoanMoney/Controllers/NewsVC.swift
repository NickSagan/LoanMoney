//
//  NewsVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 25.03.2022.
//

//
//  NewsVC.swift
//  LoanMoney
//
//  Created by Nick Sagan on 25.03.2022.
//

import UIKit

class NewsVC: UIViewController {

    private var refreshControl: UIRefreshControl!
    private var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Новости"
        setupCollectionView()
    }
}

//MARK: - COLLECTION VIEW SETUP

extension NewsVC {
    
    func setupCollectionView() {
        let view = UIView()
        view.backgroundColor = .white
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: setLayout())
        collectionView?.dataSource = self
        collectionView?.delegate = self
        collectionView?.register(NewsCell.self, forCellWithReuseIdentifier: "cell")
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
        layout.itemSize.height = 450
        return layout
    }
    
    @objc func refresh(_ sender: AnyObject) {
        usleep(UInt32(0.5))
        refreshControl.endRefreshing()
    }
}

//MARK: - UICollectionViewDataSource

extension NewsVC: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Data.instance.news.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NewsCell
        cell.imageNews.image = UIImage(named: Data.instance.news[indexPath.row].image)
        cell.titleNews.text = Data.instance.news[indexPath.row].title
        cell.textNews.text = Data.instance.news[indexPath.row].text
        return cell
    }
}
