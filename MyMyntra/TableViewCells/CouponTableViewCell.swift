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
    @IBOutlet weak var couponButton: UIButton!
    @IBOutlet weak var couponImageView: UIImageView!
    @IBOutlet weak var scanButton: UIButton!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
    
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
