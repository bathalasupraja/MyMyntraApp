//
//  WatchesImageTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 25/02/24.
//

import UIKit

struct WatchesImageModel {
    var image: String?
}

class WatchesImageTableViewCell: UITableViewCell {
    
    static let id = "WatchesImageTableViewCell"
    
    @IBOutlet weak var watchesImagesCollectionView: UICollectionView!
    
    var images = [WatchesImageModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        watchesImagesCollectionView.register(UINib(nibName: WatchesImageCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: WatchesImageCollectionViewCell.id)
        watchesImagesCollectionView.dataSource = self
        watchesImagesCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
extension WatchesImageTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WatchesImageCollectionViewCell.id, for: indexPath)
        if let watchesImageCollectionViewCell = cell as? WatchesImageCollectionViewCell {
            let model = images[indexPath.row]
            if let watchesImages = model as? WatchesImageModel {
                if let imageName = watchesImages.image {
                    let image = UIImage(named: imageName)
                    watchesImageCollectionViewCell.watchesImageView.image = image
                }
            }
        }
        return cell
    }
}
extension WatchesImageTableViewCell: UICollectionViewDelegateFlowLayout {
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
