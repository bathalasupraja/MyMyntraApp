//
//  UserPoliciesTableViewCell.swift
//  MyMyntra
//
//  Created by Supraja on 25/01/24.
//

import UIKit

class UserPoliciesTableViewCell: UITableViewCell {
    
    static let id = "UserPoliciesTableViewCell"
    
    @IBOutlet weak var faqView: UIView!
    @IBOutlet weak var faqLabel: UILabel!
    @IBOutlet weak var aboutView: UIView!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var termsView: UIView!
    @IBOutlet weak var termsLabel: UILabel!
    @IBOutlet weak var privacyView: UIView!
    @IBOutlet weak var privacyLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
