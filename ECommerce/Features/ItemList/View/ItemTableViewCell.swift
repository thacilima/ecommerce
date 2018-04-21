//
//  ItemTableViewCell.swift
//  ECommerce
//
//  Created by Thaciana Lima on 28/08/17.
//  Copyright © 2017 TL. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet private weak var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupBorder()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    private func setupBorder() {
        cardView.layer.borderWidth = 3.0
        cardView.layer.borderColor = UIColor.red.cgColor
        cardView.layer.cornerRadius = 2.0
        
        let radius: CGFloat = frame.width / 2.0 //change it to .height if you need spread for height
        let shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        //Change 2.1 to amount of spread you need and for height replace the code for height
        
        layer.cornerRadius = 2
        layer.shadowColor = UIColor.red.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0)  //Here you control x and y
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 1.0 //Here your control your blur
        layer.masksToBounds =  false
        layer.shadowPath = shadowPath.cgPath
    }
    
}
