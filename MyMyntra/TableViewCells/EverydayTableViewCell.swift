//
//  EverydayTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 16/02/24.
//

import UIKit

struct EverydayModel {
    var image: String?
}


class EverydayTableViewCell: UITableViewCell {
    
    static let id = "EverydayTableViewCell"
    
    @IBOutlet weak var everydayCollectionView: UICollectionView!
    
    var images = [EverydayModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        everydayCollectionView.dataSource = self
        everydayCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
extension EverydayTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EverydayCollectionViewCell.id, for: indexPath)
        if let everydayCollectionViewCell = cell as? EverydayCollectionViewCell {
            let model = images[indexPath.row]
            if let everydayImages = model as? EverydayModel {
                if let imageName = everydayImages.image {
                    let image = UIImage(named: imageName)
                    everydayCollectionViewCell.everydayImageView.image = image
                }
            }
        }
        return cell
    }
}
extension EverydayTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 150, height: 210)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    }
    
}
