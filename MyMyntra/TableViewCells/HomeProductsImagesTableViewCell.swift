//
//  HomeProductsImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 11/02/24.
//

import UIKit


struct HomeProductsImageModel {
    var image: String?
}

class HomeProductsImagesTableViewCell: UITableViewCell {
    
    static let id = "HomeProductsImagesTableViewCell"
    
    @IBOutlet weak var homeProductsImagesCollectionView: UICollectionView!
    
    var images = [HomeProductsImageModel]()

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
            if let homeProducts = model as? HomeProductsImageModel {
                if let imageName = homeProducts.image {
                    let image = UIImage(named: imageName)
                    homeProductsImagesCollectionViewCell.HomeProductsImages.image = image
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
        return CGSize(width: 150, height: 200)
        
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
    
