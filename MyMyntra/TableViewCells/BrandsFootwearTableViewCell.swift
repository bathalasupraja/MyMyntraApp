//
//  BrandsFootwearTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 21/02/24.
//

import UIKit

struct FootwearImageModel {
    var image: String?
}

class BrandsFootwearTableViewCell: UITableViewCell {
    
    static let id = "BrandsFootwearTableViewCell"
    
    @IBOutlet weak var footwearCollectionView: UICollectionView!
    
    var images = [FootwearImageModel]()

    override func awakeFromNib() {
        super.awakeFromNib()
        footwearCollectionView.register(UINib(nibName: BrandsFootwearImagesCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: BrandsFootwearImagesCollectionViewCell.id)
        footwearCollectionView.dataSource = self
        footwearCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
extension BrandsFootwearTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BrandsFootwearImagesCollectionViewCell.id, for: indexPath)
        if let brandsFootwearImagesCollectionViewCell = cell as? BrandsFootwearImagesCollectionViewCell {
            let model = images[indexPath.row]
            if let footwearImages = model as? FootwearImageModel {
                if let imageName = footwearImages.image {
                    let image = UIImage(named: imageName)
                    brandsFootwearImagesCollectionViewCell.brandsFootwearImageView.image = image
                }
            }
        }
        return cell
    }
}

extension BrandsFootwearTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 200, height: 250)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    }
    
}
