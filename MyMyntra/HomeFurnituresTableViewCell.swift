//
//  HomeItemsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 09/02/24.
//

import UIKit

struct HomeFurnishingModel {
    var image: String?
}

struct HomeCoockModel {
    var image: String?
}

struct HomeDecorModel {
    var image: String?
}

class HomeFurnituresTableViewCell: UITableViewCell {
    
    static let id = "HomeFurnituresTableViewCell"
    
    @IBOutlet weak var HomeFurnituresCollectionView: UICollectionView!
    
    var items = [Any]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        HomeFurnituresCollectionView.dataSource = self
        HomeFurnituresCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
extension HomeFurnituresTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeFurnituresCollectionViewCell.id, for: indexPath)
        if let homeFurnituresCollectionViewCell = cell as? HomeFurnituresCollectionViewCell {
            let model = items[indexPath.row]
            if let homeFurnishing = model as? HomeFurnishingModel {
                if let imageName = homeFurnishing.image {
                    let image = UIImage(named: imageName)
                    homeFurnituresCollectionViewCell.imageView.image = image
                }
            } else if let homeCoock = model as? HomeCoockModel {
                if let imageName = homeCoock.image {
                    let image = UIImage(named: imageName)
                    homeFurnituresCollectionViewCell.imageView.image = image
                }
            }  else if let homeDecor = model as? HomeDecorModel {
                if let imageName = homeDecor.image {
                    let image = UIImage(named: imageName)
                    homeFurnituresCollectionViewCell.imageView.image = image
                }
            }
        }
        return cell
    }
}

extension HomeFurnituresTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 250, height: collectionViewSize.height)
        
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
