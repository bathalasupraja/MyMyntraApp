//
//  PriceStoreTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 28/01/24.
//

import UIKit

class PriceStoreTableViewCell: UITableViewCell {
    
    static let id = "PriceStoreTableViewCell"
    
    @IBOutlet weak var priceStoreView: UIView!
    @IBOutlet weak var priceStoreImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
