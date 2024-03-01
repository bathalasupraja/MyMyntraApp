//
//  HotTrendsImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 04/02/24.
//

import UIKit

struct HotTrendsImageModel {
    var image: String?
}

class HotTrendsImagesTableViewCell: UITableViewCell {
    
    static let id = "HotTrendsImagesTableViewCell"
    
    @IBOutlet weak var hotTrendsImagesCollectionView: UICollectionView!
    
    var scrollTimer: Timer?

    var scrollIndex: Int = 0
    
    var images = [HotTrendsImageModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        hotTrendsImagesCollectionView.dataSource = self
        hotTrendsImagesCollectionView.delegate = self
        createScrollTimer()
    }
    
    func prepareImages(_ images: [HotTrendsImageModel]) {
        self.images = images
        hotTrendsImagesCollectionView.reloadData()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        removeScrollTimer()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func createScrollTimer() {
        scrollTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { _ in
            let maxIndex = self.images.count - 1
            if self.scrollIndex < maxIndex {
                self.scrollIndex += 1
            } else {
                self.scrollIndex = 0
            }
            let indexPath = IndexPath(item: self.scrollIndex, section: 0)
            self.hotTrendsImagesCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)

        })
    }

    func removeScrollTimer() {
        scrollTimer?.invalidate()
        scrollTimer = nil
    }
}
extension HotTrendsImagesTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HotTrendsImagesCollectionViewCell.id, for: indexPath)
        if let hotTrendsImagesCollectionViewCell = cell as? HotTrendsImagesCollectionViewCell {
            let model = images[indexPath.row]
            if let images = model as? HotTrendsImageModel {
                if let imageName = images.image {
                    let image = UIImage(named: imageName)
                    hotTrendsImagesCollectionViewCell.hotTrendsImageView.image = image
                }
            }
        }
        return cell
    }
}
extension HotTrendsImagesTableViewCell:  UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
        
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 400)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
