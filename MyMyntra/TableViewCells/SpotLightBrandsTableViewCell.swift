//
//  SpotLightBrandsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 05/02/24.
//

import UIKit

class SpotLightBrandsTableViewCell: UITableViewCell {
    
    static let id = "SpotLightBrandsTableViewCell"
    
    @IBOutlet weak var spotLightBrandsCollectionView: UICollectionView!
    
    var images = [SpotLightBrandModel]()
    
    var scrollTimer: Timer? /// Create ----- after our work complete ? ---- we have to destroy
    
    var scrollIndex: Int = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        spotLightBrandsCollectionView.dataSource = self
        spotLightBrandsCollectionView.delegate = self
        createScrollTimer()
        
    }
    
    func prepareImages(_ images: [SpotLightBrandModel]) {
        self.images = images
        spotLightBrandsCollectionView.reloadData()
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
           // print("\n>>>> scroll to index: \(self.scrollIndex)")
            let indexPath = IndexPath(item: self.scrollIndex, section: 0)
            self.spotLightBrandsCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        })
    }

    func removeScrollTimer() {
        //print("Remove Timer")
        scrollTimer?.invalidate()
        scrollTimer = nil
    }

}
extension SpotLightBrandsTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SpotLightBrandsCollectionViewCell.id, for: indexPath)
        if let spotLightBrandsCollectionViewCell = cell as? SpotLightBrandsCollectionViewCell {
            let model = images[indexPath.row]
            if let imageName = model.image {
                let image = UIImage(named: imageName)
                spotLightBrandsCollectionViewCell.spotLightFashionsImageView.image = image
            }
        }
        return cell
    }
}
extension SpotLightBrandsTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: collectionViewSize.width, height: 130)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
    
