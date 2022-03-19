//
//  LoanCell.swift
//  LoanMoney
//
//  Created by Nick Sagan on 19.03.2022.
//

import UIKit

class LoanCell: UICollectionViewCell {
    
    let background: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "loanbg")
        return imgView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
