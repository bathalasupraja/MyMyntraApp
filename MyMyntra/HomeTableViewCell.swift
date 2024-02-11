//
//  HomeTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 09/01/24.
//

import UIKit


struct HomeItemModel {
    var name: String
    var image: String?
}

struct ShoppingItemModel {
    var name: String
    var image: String?
}



class HomeTableViewCell: UITableViewCell {
    
    static let id = "homeCell"
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    
    var items = [Any]()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
    }
}
    
extension HomeTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.id, for: indexPath)
        if let shopingCell = cell as? HomeCollectionViewCell {
            let model = items[indexPath.row]
            if let homeItem = model as? HomeItemModel {
                shopingCell.nameLabel.text = homeItem.name
                if let imageName = homeItem.image {
                    let image = UIImage(named: imageName)
                    shopingCell.imageView.image = image
                }
            } else if let shoppingItem = model as? ShoppingItemModel {
                shopingCell.nameLabel.text = shoppingItem.name
                if let imageName = shoppingItem.image {
                    let image = UIImage(named: imageName)
                    shopingCell.imageView.image = image
                }
            }
        }
        return cell
    }
}
extension HomeTableViewCell:  UICollectionViewDelegateFlowLayout { // TODO: delegate flow layout should move to HomeTableViewCell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            //        let width = (collectionView.bounds.width - 15)/2
        return CGSize(width: 100, height: 100)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
    


