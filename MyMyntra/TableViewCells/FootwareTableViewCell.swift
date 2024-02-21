//
//  FootwareTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 21/02/24.
//

import UIKit

class FootwareTableViewCell: UITableViewCell {
    
    static let id = "FootwareTableViewCell"
    
    @IBOutlet weak var tittleFootwareView: UIView!
    @IBOutlet weak var tittleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
