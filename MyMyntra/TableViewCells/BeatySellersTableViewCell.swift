//
//  BeatySellersTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 08/02/24.
//

import UIKit


struct BeautySellerViewModel {
    var name: String
    
}

class BeatySellersTableViewCell: UITableViewCell {
    
    static let id = "BeatySellersTableViewCell"
    
    @IBOutlet weak var beautySellersCollectionView: UICollectionView!

    var names = [BeautySellerViewModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        beautySellersCollectionView.dataSource = self
        beautySellersCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
extension BeatySellersTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BeautySellersCollectionViewCell.id, for: indexPath)
        if let beautySellersCollectionViewCell = cell as? BeautySellersCollectionViewCell {
            let model = names[indexPath.row]
            if let beautySellerView = model as? BeautySellerViewModel {
                beautySellersCollectionViewCell.beautySellersLabel.text = beautySellerView.name
            }
        }
        return cell
    }
}
extension BeatySellersTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100 , height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

    

