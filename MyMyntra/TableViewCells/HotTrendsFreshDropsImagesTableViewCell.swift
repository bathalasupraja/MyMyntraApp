//
//  HotTrendsFreshDropsImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 14/02/24.
//

import UIKit

struct FreshDropsImageModel {
    var image: String?
}

class HotTrendsFreshDropsImagesTableViewCell: UITableViewCell {
    
    static let id = "HotTrendsFreshDropsImagesTableViewCell"
    
    @IBOutlet weak var hotTrendsFreshDropsCollectionView: UICollectionView!
    
    var images = [FreshDropsImageModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        hotTrendsFreshDropsCollectionView.register(UINib(nibName: FreshDropsImagesCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: FreshDropsImagesCollectionViewCell.id)
        hotTrendsFreshDropsCollectionView.dataSource = self
        hotTrendsFreshDropsCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
extension HotTrendsFreshDropsImagesTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FreshDropsImagesCollectionViewCell.id, for: indexPath)
        if let freshDropsImagesCollectionViewCell = cell as? FreshDropsImagesCollectionViewCell {
            let model = images[indexPath.row]
            if let freshDrops = model as? FreshDropsImageModel {
                if let imageName = freshDrops.image {
                        let image = UIImage(named: imageName)
                    freshDropsImagesCollectionViewCell.freshDropsImages.image = image
                }
            }
        }
        return cell
    }
}
extension HotTrendsFreshDropsImagesTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 150, height: 240)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
    }
}
