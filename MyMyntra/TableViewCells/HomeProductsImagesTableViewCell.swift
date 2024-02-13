//
//  HomeProductsImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 13/02/24.
//

import UIKit

struct ProductModel1 {
    var image: String?
}

struct ProductModel2 {
    var image: String?
}

struct ProductModel3 {
    var image: String?
}

struct ProductModel4 {
    var image: String?
}

class HomeProductsImagesTableViewCell: UITableViewCell {
    
    static let id = "HomeProductsImagesTableViewCell"
    
    @IBOutlet weak var homeProductsImagesCollectionView: UICollectionView!
    
    var images = [Any]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        homeProductsImagesCollectionView.dataSource = self
        homeProductsImagesCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
extension HomeProductsImagesTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeProductsImagesCollectionViewCell.id, for: indexPath)
        if let homeProductsImagesCollectionViewCell = cell as? HomeProductsImagesCollectionViewCell {
            let model = images[indexPath.row]
            if let product1 = model as? ProductModel1 {
                if let imageName = product1.image {
                        let image = UIImage(named: imageName)
                        homeProductsImagesCollectionViewCell.homeProductsImages.image = image
                }
            }
            if let product2 = model as? ProductModel2 {
                if let imageName = product2.image {
                        let image = UIImage(named: imageName)
                        homeProductsImagesCollectionViewCell.homeProductsImages.image = image
                }
            }
            if let product3 = model as? ProductModel3 {
                if let imageName = product3.image {
                        let image = UIImage(named: imageName)
                        homeProductsImagesCollectionViewCell.homeProductsImages.image = image
                }
            }
            if let product4 = model as? ProductModel4 {
                if let imageName = product4.image {
                        let image = UIImage(named: imageName)
                        homeProductsImagesCollectionViewCell.homeProductsImages.image = image
                }
            }
        }
        return cell
    }
}
extension HomeProductsImagesTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 150, height: 300)
        
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
