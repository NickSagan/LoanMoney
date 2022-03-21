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
        return imgView
    }()
    
    let percent: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Verdana", size: 22)
        label.frame.size.height = 100
        label.frame.size.width = 150
        return label
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
        label.font = UIFont(name: "Verdana", size: 12)
        return label
    }()
    
    let underViolet: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont(name: "Verdana", size: 12)
        return label
    }()
    
    let underYellow: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont(name: "Verdana", size: 12)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setConstraints()
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
        
        background.translatesAutoresizingMaskIntoConstraints = false
        logo.translatesAutoresizingMaskIntoConstraints = false
        percent.translatesAutoresizingMaskIntoConstraints = false
        blueIcon.translatesAutoresizingMaskIntoConstraints = false
        violetIcon.translatesAutoresizingMaskIntoConstraints = false
        yellowIcon.translatesAutoresizingMaskIntoConstraints = false
        underBlue.translatesAutoresizingMaskIntoConstraints = false
        underViolet.translatesAutoresizingMaskIntoConstraints = false
        underYellow.translatesAutoresizingMaskIntoConstraints = false
        
        background.snp.makeConstraints { make in
            make.top.equalTo(self)
            make.left.equalTo(self)
            make.right.equalTo(self)
            make.bottom.equalTo(self)
        }
        
        logo.snp.makeConstraints { make in
            make.top.equalTo(background.snp.top).offset(10)
            make.left.equalTo(background.snp.left).offset(10)
            make.height.equalTo(background.snp.height).multipliedBy(0.3)
        }
        
        percent.snp.makeConstraints { make in
            make.top.equalTo(background.snp.top).offset(10)
            make.left.greaterThanOrEqualTo(logo.snp.right).offset(10).priority(100)
            make.height.equalTo(logo.snp.height)
            make.right.equalTo(background.snp.right).offset(-10)
        }
    }
    
    func setConstraints() {

    }
}
