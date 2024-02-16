//
//  HotTrendsViewsCollectionViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 15/02/24.
//

import UIKit

class HotTrendsViewsCollectionViewCell: UICollectionViewCell {
    
    static let id = "HotTrendsViewsCollectionViewCell"
    
    @IBOutlet weak var namesView: UIView!
    @IBOutlet weak var namesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        namesView.layer.cornerRadius = 20
        namesView.layer.backgroundColor = UIColor.clear.cgColor
        namesView.layer.borderWidth = 2
        namesView.layer.borderColor = UIColor.systemGray4.cgColor
        namesView.layer.masksToBounds = true
    }
    
}
