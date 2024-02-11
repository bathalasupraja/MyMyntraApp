//
//  DiscountTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 18/01/24.
//

import UIKit


struct OffersCreditImageModel {
    var image: String?
}

class DiscountTableViewCell: UITableViewCell {
    
    static let id = "DiscountTableViewCell"
    
    @IBOutlet weak  var discountCollectionView: UICollectionView!
    
    var images = [OffersCreditImageModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        discountCollectionView.register(UINib(nibName: DiscountCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: DiscountCollectionViewCell.id)
        discountCollectionView.dataSource = self
        discountCollectionView.delegate = self
    }
    
    func setImages(_ images: [OffersCreditImageModel]) {
        self.images = images
        discountCollectionView.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension DiscountTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DiscountCollectionViewCell.id, for: indexPath)
        if let DiscountCollectionViewCell = cell as? DiscountCollectionViewCell {
            let model = images[indexPath.row]
            if let imageName = model.image {
                let image = UIImage(named: imageName)
                DiscountCollectionViewCell.offersCreditImages.image = image
            }
        }
        return cell
    }
}
extension DiscountTableViewCell:  UICollectionViewDelegateFlowLayout { // TODO: delegate flow layout should move to HomeTableViewCell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            //        let width = (collectionView.bounds.width - 15)/2
        return CGSize(width:collectionView.frame.width , height: 40)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

