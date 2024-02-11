//
//  BeautySellersCollectionViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 08/02/24.
//

import UIKit

class BeautySellersCollectionViewCell: UICollectionViewCell {
    
    static let id = "BeautySellersCollectionViewCell"
    
    @IBOutlet weak var beautySellersView: UIView!
    @IBOutlet weak var beautySellersLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        beautySellersView.layer.cornerRadius = 20
        beautySellersView.layer.backgroundColor = UIColor.clear.cgColor
        beautySellersView.layer.borderWidth = 2
        beautySellersView.layer.borderColor = UIColor.systemGray4.cgColor
        beautySellersView.layer.masksToBounds = true
    }
    
}
