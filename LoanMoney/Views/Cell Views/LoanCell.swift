//
//  LoanCell.swift
//  LoanMoney
//
//  Created by Nick Sagan on 19.03.2022.
//

import UIKit
import SnapKit

class LoanCell: UICollectionViewCell {
    
    let background: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "loanbg")
        return imgView
    }()
    
    let logo: UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFit
        return imgView
    }()
    
    let percent: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Verdana", size: 18)
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.frame.size.height = 100
        label.frame.size.width = 150
        label.textColor = .black
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
    
    let yellowIcon: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "yellowIcon")
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
    
    let underYellow: UILabel = {
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
        background.addSubview(logo)
        background.addSubview(percent)
        background.addSubview(blueIcon)
        background.addSubview(violetIcon)
        background.addSubview(yellowIcon)
        background.addSubview(underBlue)
        background.addSubview(underViolet)
        background.addSubview(underYellow)
        background.addSubview(separator)
        
        background.snp.makeConstraints { make in
            make.top.equalTo(self)
            make.left.equalTo(self)
            make.right.equalTo(self)
            make.bottom.equalTo(self)
        }
        
        logo.snp.makeConstraints { make in
            make.top.equalTo(background.snp.top).offset(20)
            make.left.equalTo(background.snp.left).offset(20)
            make.height.equalTo(background.snp.height).multipliedBy(0.2)
            make.width.equalTo(background.snp.width).multipliedBy(0.5)
        }
        
        percent.snp.makeConstraints { make in
            make.top.equalTo(background.snp.top).offset(20)
            make.height.equalTo(logo.snp.height)
            make.right.equalTo(background.snp.right).offset(-30)
        }
        
        separator.snp.makeConstraints { make in
            make.top.equalTo(logo.snp.bottom).offset(15)
            make.width.equalTo(background.snp.width).multipliedBy(0.8)
            make.height.equalTo(2)
            make.centerX.equalTo(background.snp.centerX)
        }
        
        blueIcon.snp.makeConstraints { make in
            make.top.equalTo(separator.snp.bottom).offset(15)
            make.left.equalTo(background.snp.left).offset(40)
        }
        
        underBlue.snp.makeConstraints { make in
            make.top.equalTo(blueIcon.snp.bottom).offset(10)
            make.left.equalTo(background.snp.left).offset(40)
        }
        
        violetIcon.snp.makeConstraints { make in
            make.top.equalTo(separator.snp.bottom).offset(15)
            make.left.equalTo(blueIcon.snp.left).offset(100)
        }
        
        underViolet.snp.makeConstraints { make in
            make.top.equalTo(violetIcon.snp.bottom).offset(10)
            make.left.equalTo(underBlue.snp.left).offset(100)
        }
        
        yellowIcon.snp.makeConstraints { make in
            make.top.equalTo(separator.snp.bottom).offset(15)
            make.left.equalTo(violetIcon.snp.left).offset(100)
        }
        
        underYellow.snp.makeConstraints { make in
            make.top.equalTo(yellowIcon.snp.bottom).offset(10)
            make.left.equalTo(underViolet.snp.left).offset(100)
        }
    }
}
