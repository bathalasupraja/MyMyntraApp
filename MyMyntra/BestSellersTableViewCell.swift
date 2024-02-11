//
//  BestSellersTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 30/01/24.
//

import UIKit

struct SellerViewModel {
    var name: String
}

class BestSellersTableViewCell: UITableViewCell {
    
    static let id = "BestSellersTableViewCell"
    
    @IBOutlet weak var bestSellersCollectionView: UICollectionView!
    
    var names = [SellerViewModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        bestSellersCollectionView.dataSource = self
        bestSellersCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
extension BestSellersTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BestSellersCollectionViewCell.id, for: indexPath)
        if let bestSellersCollectionViewCell = cell as? BestSellersCollectionViewCell {
            let model = names[indexPath.row]
            if let sellerView = model as? SellerViewModel {
                bestSellersCollectionViewCell.sellersLabel.text = sellerView.name
            }
        }
        return cell
    }
}
    
extension BestSellersTableViewCell:  UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //        let width = (collectionView.bounds.width - 15)/2
        return CGSize(width: 100 , height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
