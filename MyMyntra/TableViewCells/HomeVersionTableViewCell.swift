//
//  HomeVersionTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 13/02/24.
//

import UIKit

class HomeVersionTableViewCell: UITableViewCell {
    
    static let id = "HomeVersionTableViewCell"
    
    @IBOutlet weak var homeVersionView: UIView!
    @IBOutlet weak var homeVersionButton: UIButton!
    @IBOutlet weak var homeVersionLabel: UILabel!
    @IBOutlet weak var homeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        homeVersionView.layer.cornerRadius = 15
        homeVersionView.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
