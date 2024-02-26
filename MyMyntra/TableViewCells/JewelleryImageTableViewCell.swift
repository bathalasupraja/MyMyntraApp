//
//  JewelleryImageTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 26/02/24.
//

import UIKit

struct JewelleryImageModel {
    var image: String?
}

class JewelleryImageTableViewCell: UITableViewCell {
    
    static let id = "JewelleryImageTableViewCell"
    
    @IBOutlet weak var jewelleryCollectionView: UICollectionView!
    
    var images = [JewelleryImageModel]()

    override func awakeFromNib() {
        super.awakeFromNib()
        jewelleryCollectionView.register(UINib(nibName: JewelleryImageCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: JewelleryImageCollectionViewCell.id)
        jewelleryCollectionView.dataSource = self
        jewelleryCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}

extension JewelleryImageTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: JewelleryImageCollectionViewCell.id, for: indexPath)
        if let jewelleryImageCollectionViewCell = cell as? JewelleryImageCollectionViewCell {
            let model = images[indexPath.row]
            if let jewelleryImages = model as? JewelleryImageModel {
                if let imageName = jewelleryImages.image {
                    let image = UIImage(named: imageName)
                    jewelleryImageCollectionViewCell.jewelleryImageView.image = image
                }
            }
        }
        return cell
    }
}
extension JewelleryImageTableViewCell: UICollectionViewDelegateFlowLayout {
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
