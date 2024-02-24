//
//  GlamEssentialsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 24/02/24.
//

import UIKit

class GlamEssentialsTableViewCell: UITableViewCell {
    
    static let id = "GlamEssentialsTableViewCell"
    
    @IBOutlet weak var essentialsView: UIView!
    @IBOutlet weak var essentialsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
