//
//  CategoriesCollectionViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 28/01/24.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    static let id = "CategoriesCollectionViewCell"
    
    @IBOutlet weak var categoriesImages: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        categoriesImages.layer.cornerRadius = 10
        categoriesImages.layer.masksToBounds = true
        
    }

}
