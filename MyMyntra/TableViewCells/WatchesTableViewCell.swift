//
//  WatchesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 25/02/24.
//

import UIKit

class WatchesTableViewCell: UITableViewCell {
    
    static let id = "WatchesTableViewCell"
    
    @IBOutlet weak var watchesView: UIView!
    @IBOutlet weak var watchesLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
