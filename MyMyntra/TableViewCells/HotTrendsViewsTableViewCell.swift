//
//  HotTrendsViewsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 15/02/24.
//

import UIKit

struct HotTrendsViewsModel {
    var name: String
}

class HotTrendsViewsTableViewCell: UITableViewCell {
    
    static let id = "HotTrendsViewsTableViewCell"
    
    @IBOutlet weak var hotTrendsViewsCollection: UICollectionView!
    
    var names = [HotTrendsViewsModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        hotTrendsViewsCollection.dataSource = self
        hotTrendsViewsCollection.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension HotTrendsViewsTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HotTrendsViewsCollectionViewCell.id, for: indexPath)
        if let hotTrendsViewsCollectionViewCell = cell as? HotTrendsViewsCollectionViewCell {
            let model = names[indexPath.row]
            if let names = model as? HotTrendsViewsModel {
                hotTrendsViewsCollectionViewCell.namesLabel.text = names.name
            }
        }
        return cell
    }
}
extension HotTrendsViewsTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 100, height: 50)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
