//
//  BrandsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 21/01/24.
//

import UIKit

class BrandsTableViewCell: UITableViewCell {
    
    
    static let id = "BrandsTableViewCell"
    
    @IBOutlet weak var fashionView: UIView!
    @IBOutlet weak var tittleImageView: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
