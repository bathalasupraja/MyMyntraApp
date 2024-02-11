//
//  OffersTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 18/01/24.
//

import UIKit



class OffersTableViewCell: UITableViewCell {
    
    static let id = "OffersTableViewCell"
    
    @IBOutlet weak var offersView: UIView!
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var arrowButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var offersImageView: UIImageView!
    @IBOutlet weak var niveaImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        offersView.layer.cornerRadius = 10
        offersView.layer.borderWidth = 1.5
        offersView.layer.borderColor = UIColor.black.cgColor
        offersView.layer.masksToBounds = true
        
    }
}
