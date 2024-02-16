//
//  EverydayImageTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 26/01/24.
//

import UIKit

class EverydayImageTableViewCell: UITableViewCell {
    
    static let id = "EverydayImageTableViewCell"
    
    @IBOutlet weak var everydayView1: UIView!
    @IBOutlet weak var everydayImageView1: UIImageView!
    @IBOutlet weak var everydayView2: UIView!
    @IBOutlet weak var everydayImageView2: UIImageView!
    @IBOutlet weak var himButton: UIButton!
    @IBOutlet weak var herButton: UIButton!
    @IBOutlet weak var everydayView3: UIView!
    @IBOutlet weak var everydayImageView3: UIImageView!
    @IBOutlet weak var trendingView: UIView!
    @IBOutlet weak var trendingLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
