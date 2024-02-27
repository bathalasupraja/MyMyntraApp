//
//  BrandsVersionTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 27/02/24.
//

import UIKit

class BrandsVersionTableViewCell: UITableViewCell {
    
    static let id = "BrandsVersionTableViewCell"
    
    @IBOutlet weak var brandsView: UIView!
    @IBOutlet weak var brandsLabel: UILabel!
    @IBOutlet weak var brandsLabel2: UILabel!
    @IBOutlet weak var exploreLabel: UILabel!
    @IBOutlet weak var exploreButton: UIButton!
    @IBOutlet weak var brandsVersionLabel: UILabel!
    @IBOutlet weak var brandsPhilosophyLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        brandsView.layer.cornerRadius = 10
        brandsView.layer.borderWidth = 2
        brandsView.layer.borderColor = UIColor.white.cgColor
        brandsView.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
