//
//  EverydayTrendingEssentialsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 27/01/24.
//

import UIKit

struct TrendingEssentialsImageModel {
    var image: String?
}

class EverydayTrendingEssentialsTableViewCell: UITableViewCell {
    
    static let id = "EverydayTrendingEssentialsTableViewCell"
    
    @IBOutlet weak var trendingEssentialsCollectionView: UICollectionView!
    
    var images = [TrendingEssentialsImageModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        trendingEssentialsCollectionView.register(UINib(nibName: EverydayTrendingEssentialsCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: EverydayTrendingEssentialsCollectionViewCell.id)
        trendingEssentialsCollectionView.dataSource = self
        trendingEssentialsCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
extension EverydayTrendingEssentialsTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EverydayTrendingEssentialsCollectionViewCell.id, for: indexPath)
        if let everydayTrendingEssentialsCollectionViewCell = cell as? EverydayTrendingEssentialsCollectionViewCell {
            let model = images[indexPath.row]
            if let imageName = model.image {
                let image = UIImage(named: imageName)
                everydayTrendingEssentialsCollectionViewCell.trendingEssentialsImageView.image = image
            }
        }
        return cell
    }
    
}
extension EverydayTrendingEssentialsTableViewCell:  UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            //        let width = (collectionView.bounds.width - 15)/2
        return CGSize(width: 150 , height: 200)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
    }
}
