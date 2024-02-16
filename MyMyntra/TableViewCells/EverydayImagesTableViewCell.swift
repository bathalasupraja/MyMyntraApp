//
//  EverydayImagesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 16/02/24.
//

import UIKit

struct everydayImageModel1 {
    var image: String?
}

struct everydayImageModel2 {
    var image: String?
}

struct everydayImageModel3 {
    var image: String?
}

struct everydayImageModel4 {
    var image: String?
}

struct everydayImageModel5 {
    var image: String?
}

struct everydayImageModel6 {
    var image: String?
}


class EverydayImagesTableViewCell: UITableViewCell {
    
    static let id = "EverydayImagesTableViewCell"
    
    @IBOutlet weak var everydayImagesCollectionView: UICollectionView!
    
    var images = [Any]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        everydayImagesCollectionView.register(UINib(nibName: EverydayImagesCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: EverydayImagesCollectionViewCell.id)
        everydayImagesCollectionView.dataSource = self
        everydayImagesCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
extension EverydayImagesTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EverydayImagesCollectionViewCell.id, for: indexPath)
        if let everydayImagesCollectionViewCell = cell as? EverydayImagesCollectionViewCell {
            let model = images[indexPath.row]
            if let everydayImage1 = model as? everydayImageModel1 {
                if let imageName = everydayImage1.image {
                        let image = UIImage(named: imageName)
                    everydayImagesCollectionViewCell.everydayImageView.image = image
                }
            }
            if let everydayImage2 = model as? everydayImageModel2 {
                if let imageName = everydayImage2.image {
                        let image = UIImage(named: imageName)
                    everydayImagesCollectionViewCell.everydayImageView.image = image
                }
            }
            if let everydayImage3 = model as? everydayImageModel3 {
                if let imageName = everydayImage3.image {
                        let image = UIImage(named: imageName)
                    everydayImagesCollectionViewCell.everydayImageView.image = image
                }
            }
            if let everydayImage4 = model as? everydayImageModel4 {
                if let imageName = everydayImage4.image {
                        let image = UIImage(named: imageName)
                    everydayImagesCollectionViewCell.everydayImageView.image = image
                }
            }
            if let everydayImage5 = model as? everydayImageModel5 {
                if let imageName = everydayImage5.image {
                        let image = UIImage(named: imageName)
                    everydayImagesCollectionViewCell.everydayImageView.image = image
                }
            }
            if let everydayImage6 = model as? everydayImageModel6 {
                if let imageName = everydayImage6.image {
                        let image = UIImage(named: imageName)
                    everydayImagesCollectionViewCell.everydayImageView.image = image
                }
            }
        }
        return cell
    }
}
extension EverydayImagesTableViewCell: UICollectionViewDelegateFlowLayout {
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
