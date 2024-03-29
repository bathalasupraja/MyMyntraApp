//
//  BrandsImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 22/01/24.
//

import UIKit


class BrandsImagesTableViewCell: UITableViewCell {
    
    
    static let id = "BrandsImagesTableViewCell"
    
    @IBOutlet weak var brandsCollectionView: UICollectionView!
    
    var scrollTimer: Timer? /// Create ----- after our work complete ? ---- we have to destroy

    var scrollIndex: Int = 0
    
    var images = [BrandsImageModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        brandsCollectionView.register(UINib(nibName: BrandsImagesCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: BrandsImagesCollectionViewCell.id)
        
        brandsCollectionView.dataSource = self
        brandsCollectionView.delegate = self
        createScrollTimer()
    }

    func prepareImages(_ images: [BrandsImageModel]) {
        self.images = images
        brandsCollectionView.reloadData()
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
            self.brandsCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        })
    }

    func removeScrollTimer() {
       // print("Remove Timer")
        scrollTimer?.invalidate()
        scrollTimer = nil
    }
}

extension BrandsImagesTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BrandsImagesCollectionViewCell.id, for: indexPath)
        if let brandsImagesCollectionViewCell = cell as? BrandsImagesCollectionViewCell {
            let model = images[indexPath.item]
            if let brandsImageFashions = model as? BrandsImageModel {
                if let imageName = model.image {
                    let image = UIImage(named: imageName)
                    brandsImagesCollectionViewCell.brandsImageFashionsImageView.image = image
                }
            }
        }
        return cell
    }
}
extension BrandsImagesTableViewCell:  UICollectionViewDelegateFlowLayout { 
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
    
