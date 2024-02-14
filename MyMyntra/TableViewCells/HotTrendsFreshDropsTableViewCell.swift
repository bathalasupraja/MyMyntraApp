//
//  HotTrendsFreshDropsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 14/02/24.
//

import UIKit

class HotTrendsFreshDropsTableViewCell: UITableViewCell {
    
    static let id = "HotTrendsFreshDropsTableViewCell"
    
    @IBOutlet weak var FreshDropsView: UIView!
    @IBOutlet weak var FreshDropsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
