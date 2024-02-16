//
//  ProfileViewController.swift
//  MyMyntra
//
//  Created by Supraja on 18/01/24.
//

import UIKit

class ProfileImageTableViewCell: UITableViewCell {
    
    static let id = "ProfileImageTableViewCell"
    
    
    @IBOutlet weak var emptyView: UIView!
    @IBOutlet weak var emptyImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
}

class ProfileEmptyTableViewCell: UITableViewCell {
    
    static let id = "ProfileEmptyTableViewCell"
    
}

class EmptyTableViewCell: UITableViewCell {
    
    static let id = "EmptyTableViewCell"
}

class EmptyProfileTableViewCell: UITableViewCell {
    
    static let id = "EmptyProfileTableViewCell"
    
}

class ProfileVersionTableViewCell: UITableViewCell {
    
    static let id = "ProfileVersionTableViewCell"
    
    @IBOutlet weak var appVersionLabel: UILabel!
}


class ProfileTableViewCell: UITableViewCell {
    
    static let id = "ProfileTableViewCell"
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var profileDiscriptionLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}

struct ProfileViewModel {
    var name: String
    var discription: String
    var image: String?
}

class ProfileViewController: UIViewController {
    
    
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var profileTableView: UITableView!
    
    
    var profileViews = [ProfileViewModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileTableView.register(UINib(nibName: CouponTableViewCell.id, bundle: nil), forCellReuseIdentifier: CouponTableViewCell.id)
        profileTableView.register(UINib(nibName: UserPoliciesTableViewCell.id, bundle: nil), forCellReuseIdentifier: UserPoliciesTableViewCell.id)
        
        createProfileViews()
        profileTableView.dataSource = self
        profileTableView.delegate = self
    }

    
    func createProfileViews() {
        profileViews.append(ProfileViewModel(name: "Orders", discription: "Check your order status", image: "Orders"))
        profileViews.append(ProfileViewModel(name: "Help Center", discription: "Help regarding your recent purchases", image: "Help Center"))
        profileViews.append(ProfileViewModel(name: "Wishlist", discription: "Your most loved styles", image: "Wishlist"))
    }
    
    func getCellIdentifierAtIndexPath(_ indexPath: IndexPath) -> String {
        switch indexPath.section {
        case 0:
            return ProfileImageTableViewCell.id
        case 1:
            return EmptyTableViewCell.id
        case 2:
            return ProfileTableViewCell.id
        case 3:
            return ProfileEmptyTableViewCell.id
        case 4:
            return CouponTableViewCell.id
        case 5:
            return EmptyProfileTableViewCell.id
        case 6:
            return UserPoliciesTableViewCell.id
        default:
            return ProfileVersionTableViewCell.id
        }
    }
    
    func getCellHeightAtIndexPath(_ indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 200
        case 1:
            return 15
        case 2:
            return 80
        case 3:
            return 15
        case 4:
            return 80
        case 5:
            return 15
        case 6:
            return 200
        default:
            return 180
        }
    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 3
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 1
        } else if section == 5 {
            return 1
        } else if section == 6 {
            return 1
        } else {
            return 1
        }
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = getCellIdentifierAtIndexPath(indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let profileView = profileViews[indexPath.row]
        if let profileTableViewCell = cell as? ProfileTableViewCell {
            profileTableViewCell.profileDiscriptionLabel.text = profileView.discription
            profileTableViewCell.profileNameLabel.text = profileView.name
            if let  imageName = profileView.image {
                let image = UIImage(named: imageName)
                profileTableViewCell.profileImageView.image = image
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = getCellHeightAtIndexPath(indexPath)
        return height
    }
}

