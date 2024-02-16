//
//  FreshLaunchesImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 06/02/24.
//

import UIKit


class FreshLaunchesImagesTableViewCell: UITableViewCell {
    
    static let id = "FreshLaunchesImagesTableViewCell"
    
    @IBOutlet weak var freshLaunchesImagesCollectionView: UICollectionView!
    
    var freshLaunches = [FreshLaunchesImageModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        freshLaunchesImagesCollectionView.dataSource = self
        freshLaunchesImagesCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
extension FreshLaunchesImagesTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        freshLaunches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FreshLaunchesImagesColectionViewCell.id, for: indexPath)
        if let  freshLaunchesImagesColectionViewCell = cell as? FreshLaunchesImagesColectionViewCell {
            let model = freshLaunches[indexPath.row]
            if let imageName = model.image {
                let image = UIImage(named: imageName)
                freshLaunchesImagesColectionViewCell.freshLaunchesImageView.image = image
            }
        }
        
        return cell
    }
}
extension FreshLaunchesImagesTableViewCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: collectionViewSize.width, height: collectionViewSize.height)
        
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

