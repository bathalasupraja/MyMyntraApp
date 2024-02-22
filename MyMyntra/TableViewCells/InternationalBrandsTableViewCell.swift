//
//  InternationalBrandsTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 22/02/24.
//

import UIKit

class InternationalBrandsTableViewCell: UITableViewCell {
    
    static let id = "InternationalBrandsTableViewCell"
    
    @IBOutlet weak var internationalBrandsView: UIView!
    @IBOutlet weak var brandsLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
