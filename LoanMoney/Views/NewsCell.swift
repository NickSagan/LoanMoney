//
//  NewsCell.swift
//  LoanMoney
//
//  Created by Nick Sagan on 25.03.2022.
//

import UIKit
import SnapKit

class NewsCell: UICollectionViewCell {
    
    let imageNews: UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    
    let titleNews: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Verdana", size: 14)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    let textNews: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Verdana", size: 12)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(imageNews)
        addSubview(titleNews)
        addSubview(textNews)
        
        imageNews.translatesAutoresizingMaskIntoConstraints = false
        titleNews.translatesAutoresizingMaskIntoConstraints = false
        textNews.translatesAutoresizingMaskIntoConstraints = false
 
        imageNews.snp.makeConstraints { make in
            make.top.equalTo(self)
            make.left.equalTo(self).offset(15)
            make.right.equalTo(self).offset(-15)
        }
        
        titleNews.snp.makeConstraints { make in
            make.top.equalTo(imageNews.snp.bottom).offset(2)
            make.left.equalTo(self).offset(15)
            make.right.equalTo(self).offset(-15)
        }
        
        textNews.snp.makeConstraints { make in
            make.top.equalTo(titleNews.snp.bottom).offset(10)
            make.left.equalTo(self).offset(15)
            make.right.equalTo(self).offset(-15)
        }
    }
}
