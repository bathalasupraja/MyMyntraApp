//
//  MyntraTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 06/01/24.
//

import UIKit

class StoreTableViewCell: UITableViewCell {
    
    static let id = "storesCell"
    
    @IBOutlet weak var myntraImages: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func prepareStore(_ store: StoreModel) {
        if let image = store.image {
            let storeImage = UIImage(named: image)
            myntraImages.image = storeImage
        }
    }
}
