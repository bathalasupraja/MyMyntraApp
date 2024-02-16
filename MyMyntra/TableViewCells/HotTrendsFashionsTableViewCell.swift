//
//  HotTrendsFashionsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 15/02/24.
//

import UIKit

struct HotTrendsFashionsModel {
    var image: String?
}

class HotTrendsFashionsTableViewCell: UITableViewCell {
    
    static let id = "HotTrendsFashionsTableViewCell"
    
    @IBOutlet weak var hotTrendsFashionsCollectionView: UICollectionView!
    
    var images = [HotTrendsFashionsModel]()

    override func awakeFromNib() {
        super.awakeFromNib()
        hotTrendsFashionsCollectionView.register(UINib(nibName: HotTrendsFashionsCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: HotTrendsFashionsCollectionViewCell.id)
        hotTrendsFashionsCollectionView.dataSource = self
        hotTrendsFashionsCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
extension HotTrendsFashionsTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HotTrendsFashionsCollectionViewCell.id, for: indexPath)
        if let hotTrendsFashionsCollectionViewCell = cell as? HotTrendsFashionsCollectionViewCell {
            let model = images[indexPath.row]
            if let hotTrendsFashions = model as? HotTrendsFashionsModel {
                if let imageName = hotTrendsFashions.image {
                    let image = UIImage(named: imageName)
                    hotTrendsFashionsCollectionViewCell.hotTrendsFashionsImageView.image = image
                }
            }
        }
        return cell
    }
}
extension HotTrendsFashionsTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 190, height: 290)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
