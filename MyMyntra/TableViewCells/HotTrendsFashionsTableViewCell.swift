//
//  HotTrendsFashionsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 15/02/24.
//

import UIKit


struct HotTrendsImageModel1 {
    var image: String?
}

struct HotTrendsImageModel2 {
    var image: String?
}

struct HotTrendsImageModel3 {
    var image: String?
}

struct HotTrendsImageModel4 {
    var image: String?
}

struct HotTrendsImageModel5 {
    var image: String?
}

class HotTrendsFashionsTableViewCell: UITableViewCell {
    
    static let id = "HotTrendsFashionsTableViewCell"
    
    @IBOutlet weak var hotTrendsFashionsCollectionView: UICollectionView!
    
    var images = [Any]()

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
            if let hotTrendsImage1 = model as? HotTrendsImageModel1 {
                if let imageName = hotTrendsImage1.image {
                    let image = UIImage(named: imageName)
                    hotTrendsFashionsCollectionViewCell.hotTrendsFashionsImageView.image = image
                }
            }
            if let hotTrendsImage2 = model as? HotTrendsImageModel2 {
                if let imageName = hotTrendsImage2.image {
                    let image = UIImage(named: imageName)
                    hotTrendsFashionsCollectionViewCell.hotTrendsFashionsImageView.image = image
                }
            }
            if let hotTrendsImage3 = model as? HotTrendsImageModel3 {
                if let imageName = hotTrendsImage3.image {
                    let image = UIImage(named: imageName)
                    hotTrendsFashionsCollectionViewCell.hotTrendsFashionsImageView.image = image
                }
            }
            if let hotTrendsImage4 = model as? HotTrendsImageModel4 {
                if let imageName = hotTrendsImage4.image {
                    let image = UIImage(named: imageName)
                    hotTrendsFashionsCollectionViewCell.hotTrendsFashionsImageView.image = image
                }
            }
            if let hotTrendsImage5 = model as? HotTrendsImageModel5 {
                if let imageName = hotTrendsImage5.image {
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
        return CGSize(width: 200, height: 300)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
