//
//  JewelleryTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 26/02/24.
//

import UIKit

class JewelleryTableViewCell: UITableViewCell {
    
    static let id = "JewelleryTableViewCell"
    
    @IBOutlet weak var jewelleryView: UIView!
    @IBOutlet weak var jewelleryLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
