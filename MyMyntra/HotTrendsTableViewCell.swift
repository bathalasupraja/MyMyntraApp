//
//  HotTrendsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 25/01/24.
//

import UIKit


struct HotTrendModel {
    var name: String
    var image: String?
}

class HotTrendsTableViewCell: UITableViewCell {
    
    
    static let id = "HotTrendsTableViewCell"
    
    @IBOutlet weak var hotTrendsCollectionView: UICollectionView!
    
    var items = [HotTrendModel]()
    
 
    override func awakeFromNib() {
        super.awakeFromNib()
        hotTrendsCollectionView.dataSource = self
        hotTrendsCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
extension HotTrendsTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HotTrendsCollectionViewCell.id, for: indexPath)
        if let hotTrendsCollectionViewCell = cell as? HotTrendsCollectionViewCell {
            let model = items[indexPath.row]
            if let hotTrend = model as? HotTrendModel {
                hotTrendsCollectionViewCell.hotTrendsNameLabel.text = hotTrend.name
                if let imageName = hotTrend.image {
                    let image = UIImage(named: imageName)
                    hotTrendsCollectionViewCell.hotTrendsImageView.image = image
                }
            }
        }
        return cell
    }
}
extension HotTrendsTableViewCell:  UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        5
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        5
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
    
