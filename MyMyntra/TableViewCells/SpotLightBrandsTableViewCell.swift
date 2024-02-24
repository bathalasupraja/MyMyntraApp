//
//  SpotLightBrandsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 05/02/24.
//

import UIKit

class SpotLightBrandsTableViewCell: UITableViewCell {
    
    static let id = "SpotLightBrandsTableViewCell"
    
    @IBOutlet weak var spotLightBrandsCollectionView: UICollectionView!
    
    var spotLightBrands = [SpotLightBrandModel]()

    override func awakeFromNib() {
        super.awakeFromNib()
        spotLightBrandsCollectionView.dataSource = self
        spotLightBrandsCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
extension SpotLightBrandsTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        spotLightBrands.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SpotLightBrandsCollectionViewCell.id, for: indexPath)
        if let spotLightBrandsCollectionViewCell = cell as? SpotLightBrandsCollectionViewCell {
            let model = spotLightBrands[indexPath.row]
            if let imageName = model.image {
                let image = UIImage(named: imageName)
                spotLightBrandsCollectionViewCell.spotLightFashionsImageView.image = image
            }
        }
        return cell
    }
}
extension SpotLightBrandsTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: collectionViewSize.width, height: 130)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
    
