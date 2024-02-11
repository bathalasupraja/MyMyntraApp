//
//  BestSellersCollectionViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 30/01/24.
//

import UIKit

class BestSellersCollectionViewCell: UICollectionViewCell {
    
    static let id = "BestSellersCollectionViewCell"
    
    @IBOutlet weak var sellersView: UIView!
    @IBOutlet weak var sellersLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        sellersView.layer.cornerRadius = 20
        sellersView.layer.backgroundColor = UIColor.clear.cgColor
        sellersView.layer.borderWidth = 2
        sellersView.layer.borderColor = UIColor.systemGray4.cgColor
        sellersView.layer.masksToBounds = true
    }
    
}
