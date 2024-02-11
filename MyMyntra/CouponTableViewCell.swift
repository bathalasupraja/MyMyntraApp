//
//  CouponTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 20/01/24.
//

import UIKit



class CouponTableViewCell: UITableViewCell {
    
    static let id = "CouponTableViewCell"
    
    @IBOutlet weak var couponView: UIView!
    @IBOutlet weak var couponImageView: UIImageView!
    @IBOutlet weak var couponNameLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
    
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
