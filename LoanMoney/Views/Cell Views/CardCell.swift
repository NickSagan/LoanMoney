//
//  CardCell.swift
//  LoanMoney
//
//  Created by Nick Sagan on 23.03.2022.
//

import UIKit
import SnapKit

class CardCell: UICollectionViewCell {
    
    let background: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "loanbg")
        return imgView
    }()
    
    let cardImage: UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    
    let cardName: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Verdana", size: 18)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.frame.size.height = 40
        label.frame.size.width = 150
        label.textColor = .black
        return label
    }()
    
    let percent: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Verdana", size: 16)
        label.frame.size.height = 40
        label.frame.size.width = 150
        label.textColor = .black
        label.numberOfLines = 2
        return label
    }()
    
    let separator: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "separator")
        return imgView
    }()
    
    let blueIcon: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "blueIcon")
        imgView.frame.size.height = 30
        imgView.frame.size.width = 30
        return imgView
    }()
    
    let violetIcon: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "violetIcon")
        imgView.frame.size.height = 30
        imgView.frame.size.width = 30
        return imgView
    }()
    
    let underBlue: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont(name: "Verdana", size: 14)
        label.textColor = .black
        return label
    }()
    
    let underViolet: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont(name: "Verdana", size: 14)
        label.textColor = .black
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
        addSubview(background)
        background.addSubview(cardImage)
        background.addSubview(cardName)
        background.addSubview(percent)
        background.addSubview(blueIcon)
        background.addSubview(violetIcon)
        background.addSubview(underBlue)
        background.addSubview(underViolet)
        background.addSubview(separator)
        
        background.translatesAutoresizingMaskIntoConstraints = false
        cardImage.translatesAutoresizingMaskIntoConstraints = false
        cardName.translatesAutoresizingMaskIntoConstraints = false
        percent.translatesAutoresizingMaskIntoConstraints = false
        blueIcon.translatesAutoresizingMaskIntoConstraints = false
        violetIcon.translatesAutoresizingMaskIntoConstraints = false
        underBlue.translatesAutoresizingMaskIntoConstraints = false
        underViolet.translatesAutoresizingMaskIntoConstraints = false
        separator.translatesAutoresizingMaskIntoConstraints = false
        
        background.snp.makeConstraints { make in
            make.top.equalTo(self)
            make.left.equalTo(self)
            make.right.equalTo(self)
            make.bottom.equalTo(self)
        }
        
        cardImage.snp.makeConstraints { make in
            make.top.equalTo(background.snp.top).offset(10)
            make.left.equalTo(background.snp.left).offset(15)
            make.height.equalTo(background.snp.height).multipliedBy(0.5)
            make.width.equalTo(background.snp.width).multipliedBy(0.4)
        }
        
        cardName.snp.makeConstraints { make in
            make.top.equalTo(background.snp.top).offset(20)
            make.left.equalTo(cardImage.snp.right).offset(15)
        }
        
        percent.snp.makeConstraints { make in
            make.top.equalTo(cardName.snp.bottom).offset(15)
            make.left.equalTo(cardImage.snp.right).offset(15)
        }
        
        separator.snp.makeConstraints { make in
            make.top.equalTo(cardImage.snp.bottom).offset(10)
            make.width.equalTo(background.snp.width).multipliedBy(0.8)
            make.height.equalTo(2)
            make.centerX.equalTo(background.snp.centerX)
        }
        
        blueIcon.snp.makeConstraints { make in
            make.top.equalTo(separator.snp.bottom).offset(10)
            make.left.equalTo(background.snp.left).offset(20)
        }
        
        underBlue.snp.makeConstraints { make in
            make.top.equalTo(separator.snp.bottom).offset(15)
            make.left.equalTo(blueIcon.snp.right).offset(10)
        }
        
        violetIcon.snp.makeConstraints { make in
            make.top.equalTo(separator.snp.bottom).offset(15)
            make.left.equalTo(underBlue.snp.right).offset(40)
        }
        
        underViolet.snp.makeConstraints { make in
            make.top.equalTo(separator.snp.bottom).offset(15)
            make.left.equalTo(violetIcon.snp.right).offset(10)
        }
    }
}
