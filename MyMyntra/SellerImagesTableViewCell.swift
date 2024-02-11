//
//  SellerImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 30/01/24.
//

import UIKit

struct SellerImageModel {
    var image: String?
}

class SellerImagesTableViewCell: UITableViewCell {
    
    static let id = "SellerImagesTableViewCell"
    
    @IBOutlet weak var sellerImageCollectionView: UICollectionView!
    
    var sellerImage = [SellerImageModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        sellerImageCollectionView.register(UINib(nibName: SellerImagesCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: SellerImagesCollectionViewCell.id)
        sellerImageCollectionView.dataSource = self
        sellerImageCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
extension SellerImagesTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sellerImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SellerImagesCollectionViewCell.id, for: indexPath)
        if let sellerImagesCollectionViewCell = cell as? SellerImagesCollectionViewCell {
            let model = sellerImage[indexPath.row]
            if let sellerImage = model as? SellerImageModel {
                if let imageName = sellerImage.image {
                    let image = UIImage(named: imageName)
                    sellerImagesCollectionViewCell.sellerImages.image = image
                }
            }
        }
        return cell
    }
    
    
}
extension SellerImagesTableViewCell:  UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //        let width = (collectionView.bounds.width - 15)/2
        return CGSize(width: 170 , height: 280)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
    }
}
