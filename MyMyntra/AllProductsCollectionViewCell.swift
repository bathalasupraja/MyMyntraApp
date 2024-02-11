//
//  AllProductsCollectionViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 10/02/24.
//

import UIKit

class AllProductsCollectionViewCell: UICollectionViewCell {
    
    static let id = "AllProductsCollectionViewCell"
    
    @IBOutlet weak var productsView: UIView!
    @IBOutlet weak var productsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productsView.layer.cornerRadius = 20
        productsView.layer.backgroundColor = UIColor.clear.cgColor
        productsView.layer.borderWidth = 2
        productsView.layer.borderColor = UIColor.systemGray4.cgColor
        productsView.layer.masksToBounds = true
    }
}
