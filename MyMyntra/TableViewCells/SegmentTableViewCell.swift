//
//  SegmentTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 24/01/24.
//

import UIKit

class SegmentTableViewCell: UITableViewCell {
    
    static let id = "SegmentTableViewCell"
    
    @IBOutlet weak var trendsView: UIView!
    @IBOutlet weak var trendsSegmentControl: UISegmentedControl!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        trendsSegmentControl.layer.borderColor = UIColor.gray.cgColor
        trendsSegmentControl.layer.cornerRadius = 10
        trendsSegmentControl.layer.borderWidth = 2
        trendsSegmentControl.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
