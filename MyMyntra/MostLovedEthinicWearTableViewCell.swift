//
//  MostLovedEthinicWearTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 07/02/24.
//

import UIKit

class MostLovedEthinicWearTableViewCell: UITableViewCell {
    
    static let id = "MostLovedEthinicWearTableViewCell"
    
    @IBOutlet weak var ethinicWearView: UIView!
    @IBOutlet weak var ethinicWearLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
