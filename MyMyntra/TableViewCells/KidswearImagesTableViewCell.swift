//
//  KidswearImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 23/02/24.
//

import UIKit


struct KidswearImageModel {
    var image: String?
}

class KidswearImagesTableViewCell: UITableViewCell {
    
    static let id = "KidswearImagesTableViewCell"
    
    @IBOutlet weak var kidswearCollectionView: UICollectionView!
    
    var scrollTimer: Timer?
    
    var scrollIndex: Int = 0
    
    var images = [KidswearImageModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        kidswearCollectionView.dataSource = self
        kidswearCollectionView.delegate = self
        createScrollTimer()
    }
    
    func prepareImages(_ images: [KidswearImageModel]) {
        self.images = images
        kidswearCollectionView.reloadData()
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
            self.kidswearCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        })
    }
    
    func removeScrollTimer() {
       // print("Remove Timer")
        scrollTimer?.invalidate()
        scrollTimer = nil
    }
}
extension KidswearImagesTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: KidswearImagesCollectionViewCell.id, for: indexPath)
        if let kidswearImagesCollectionViewCell = cell as? KidswearImagesCollectionViewCell {
            let model = images[indexPath.row]
            if let kidswearImages = model as? KidswearImageModel {
                if let imageName = kidswearImages.image {
                    let image = UIImage(named: imageName)
                    kidswearImagesCollectionViewCell.kidswearImageView.image = image
                }
            }
        }
        return cell
    }
}
extension KidswearImagesTableViewCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: collectionViewSize.width, height: 180)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
