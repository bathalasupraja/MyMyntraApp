//
//  CategoriesCollectionViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 28/01/24.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    static let id = "CategoriesCollectionViewCell"
    
    @IBOutlet weak var categoriesImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        categoriesImageView.layer.cornerRadius = 10
        categoriesImageView.layer.masksToBounds = true
        
    }

}
