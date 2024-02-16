//
//  CategoriesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 28/01/24.
//

import UIKit

struct MensCategoryModel {
    var image: String?
}

struct WomensCategoryModel {
    var image: String?
}

struct KidsWearCategoryModel {
    var image: String?
}

struct HomeKitchenCategoryModel {
    var image: String?
}

struct BeautyPersonalCareCategoryModel {
    var image: String?
}

struct AccessoriesCategoryModel {
    var image: String?
}



class CategoriesTableViewCell: UITableViewCell {
    
    static let id = "CategoriesTableViewCell"
    
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    
    var categories = [Any]()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        categoriesCollectionView.register(UINib(nibName: CategoriesCollectionViewCell.id, bundle: nil), forCellWithReuseIdentifier: CategoriesCollectionViewCell.id)
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
extension CategoriesTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.id, for: indexPath)
        if let categoriesCollectionViewCell = cell as? CategoriesCollectionViewCell {
            let model = categories[indexPath.row]
            if let mensCategory = model as? MensCategoryModel {
                if let imageName = mensCategory.image {
                    let image = UIImage(named: imageName)
                    categoriesCollectionViewCell.categoriesImageView.image = image
                }
            }
            
            if let womensCategory = model as? WomensCategoryModel {
                if let imageName = womensCategory.image {
                    let image = UIImage(named: imageName)
                    categoriesCollectionViewCell.categoriesImageView.image = image
                }
            }
            
            if let kidsWearCategory = model as? KidsWearCategoryModel {
                if let imageName = kidsWearCategory.image {
                    let image = UIImage(named: imageName)
                    categoriesCollectionViewCell.categoriesImageView.image = image
                }
            }
            
            if let homeKitchenCategory = model as? HomeKitchenCategoryModel {
                if let imageName = homeKitchenCategory.image {
                    let image = UIImage(named: imageName)
                    categoriesCollectionViewCell.categoriesImageView.image = image
                }
            }

            if let beautyPersonalCareCategory = model as? BeautyPersonalCareCategoryModel {
                if let imageName = beautyPersonalCareCategory.image {
                    let image = UIImage(named: imageName)
                    categoriesCollectionViewCell.categoriesImageView.image = image
                }
            }

            if let accessoriesCategory = model as? AccessoriesCategoryModel {
                if let imageName = accessoriesCategory.image {
                    let image = UIImage(named: imageName)
                    categoriesCollectionViewCell.categoriesImageView.image = image
                }
            }
        }
        return cell
    }
}
    
extension CategoriesTableViewCell:  UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //        let width = (collectionView.bounds.width - 15)/2
        return CGSize(width: 110 , height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
    }
}


