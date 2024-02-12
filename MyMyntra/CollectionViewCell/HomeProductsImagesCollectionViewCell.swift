//
//  HomeProductsImagesCollectionViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 11/02/24.
//

import UIKit

struct HomeProductsImageModel {
    var image: String?
}

class HomeProductsImagesCollectionViewCell: UICollectionViewCell {
    
    static let id = "HomeProductsImagesCollectionViewCell"
    
    @IBOutlet weak var homeProductsImages: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
