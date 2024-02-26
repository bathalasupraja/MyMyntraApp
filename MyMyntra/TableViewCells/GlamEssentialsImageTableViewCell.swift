//
//  GlamEssentialsImageTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 24/02/24.
//

import UIKit


struct GlamEssentialsImageModel {
    var image: String?
}

class GlamEssentialsImageTableViewCell: UITableViewCell {
    
    static let id = "GlamEssentialsImageTableViewCell"
    
    @IBOutlet weak var glamEssentialsCollectionView: UICollectionView!
    
    var images = [GlamEssentialsImageModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        glamEssentialsCollectionView.register(UINib(nibName: GlamEssentialsImageCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: GlamEssentialsImageCollectionViewCell.id)
        glamEssentialsCollectionView.dataSource = self
        glamEssentialsCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
extension GlamEssentialsImageTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GlamEssentialsImageCollectionViewCell.id, for: indexPath)
        if let glamEssentialsImageCollectionViewCell = cell as? GlamEssentialsImageCollectionViewCell {
             let model = images[indexPath.row]
             if let glamEssentialsImages = model as? GlamEssentialsImageModel {
                if let imageName = glamEssentialsImages.image {
                    let image = UIImage(named: imageName)
                    glamEssentialsImageCollectionViewCell.glamEssentialsImageView.image = image
                }
            }
        }
        return cell
    }
}
extension GlamEssentialsImageTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 250, height: 450)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
