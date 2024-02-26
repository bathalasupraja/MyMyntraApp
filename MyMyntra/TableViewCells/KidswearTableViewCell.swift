//
//  KidswearTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 22/02/24.
//

import UIKit

class KidswearTableViewCell: UITableViewCell {
    
    static let id = "KidswearTableViewCell"
    
    @IBOutlet weak var kidsView: UIView!
    @IBOutlet weak var kidswearLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
