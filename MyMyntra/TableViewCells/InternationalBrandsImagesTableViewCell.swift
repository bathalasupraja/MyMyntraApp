//
//  InternationalBrandsImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 22/02/24.
//

import UIKit


struct InternationalBrandsImageModel {
    var image: String?
}

class InternationalBrandsImagesTableViewCell: UITableViewCell {
    
    static let id = "InternationalBrandsImagesTableViewCell"
    
    @IBOutlet weak var InternationalBrandsCollectionView: UICollectionView!
    
    var images = [InternationalBrandsImageModel]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        InternationalBrandsCollectionView.register(UINib(nibName: InternationalBrandsImagesCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: InternationalBrandsImagesCollectionViewCell.id)
        InternationalBrandsCollectionView.dataSource = self
        InternationalBrandsCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
extension InternationalBrandsImagesTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InternationalBrandsImagesCollectionViewCell.id, for: indexPath)
        if let internationalBrandsImagesCollectionViewCell = cell as? InternationalBrandsImagesCollectionViewCell {
            let model = images[indexPath.row]
            if let internationalBrands = model as? InternationalBrandsImageModel {
                if let imageName = internationalBrands.image {
                    let image = UIImage(named: imageName)
                    internationalBrandsImagesCollectionViewCell.internationalBrandsImageView.image = image
                }
            }
            
        }
        return cell
    }
}
extension InternationalBrandsImagesTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.bounds.size
        return CGSize(width: 200, height: 250)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    }
    
}
