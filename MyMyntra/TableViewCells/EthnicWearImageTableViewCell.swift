//
//  EthnicWearImageTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 07/02/24.
//

import UIKit

class EthnicWearImageTableViewCell: UITableViewCell {
    
    static let id = "EthnicWearImageTableViewCell"
    
    @IBOutlet weak var ethinicWearImageCollectionView: UICollectionView!
    
    var images = [EthnicImageModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ethinicWearImageCollectionView.register(UINib(nibName: EthnicWearImageCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: EthnicWearImageCollectionViewCell.id)
        ethinicWearImageCollectionView.dataSource = self
        ethinicWearImageCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }
}
extension EthnicWearImageTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EthnicWearImageCollectionViewCell.id, for: indexPath)
        if let EthnicWearImageCollectionViewCell = cell as? EthnicWearImageCollectionViewCell {
            let model = images[indexPath.row]
            if let ethnicWearImages = model as? EthnicImageModel {
                if let imageName = ethnicWearImages.image {
                    let image = UIImage(named: imageName)
                    EthnicWearImageCollectionViewCell.ethnicWearImageView.image = image
                }
            }
        }
        return cell
    }
}

extension EthnicWearImageTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 200, height: 250)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
    
