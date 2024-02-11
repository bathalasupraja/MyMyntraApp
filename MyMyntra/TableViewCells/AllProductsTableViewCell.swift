//
//  AllProductsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 10/02/24.
//

import UIKit

struct AllProductsModel {
    var name: String
}

class AllProductsTableViewCell: UITableViewCell {
    
    static let id = "AllProductsTableViewCell"
    
    
    @IBOutlet weak var allProductsCollectionView: UICollectionView!
    
    var names = [AllProductsModel]()

    override func awakeFromNib() {
        super.awakeFromNib()
        allProductsCollectionView.dataSource = self
        allProductsCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
extension AllProductsTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AllProductsCollectionViewCell.id, for: indexPath)
        if let allProductsCollectionViewCell = cell as? AllProductsCollectionViewCell {
            let model = names[indexPath.row]
            if let allProducts = model as? AllProductsModel {
                allProductsCollectionViewCell.productsLabel.text = allProducts.name
            }
        }
        return cell
    }
}
extension AllProductsTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 100, height: 50)
        
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
