//
//  BestSellersTittleTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 30/01/24.
//

import UIKit

class BestSellersTittleTableViewCell: UITableViewCell {
    
    static let id = "BestSellersTittleTableViewCell"
    
    @IBOutlet weak var tittleView: UIView!
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
