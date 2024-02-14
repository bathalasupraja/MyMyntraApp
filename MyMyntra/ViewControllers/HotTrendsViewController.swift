//
//  HotTrendsViewController.swift
//  MyMyntra
//
//  Created by Supraja on 18/01/24.
//

import UIKit

class HotTrendsOffersTableViewCell: UITableViewCell {
    
    static let id = "HotTrendsOffersTableViewCell"
    
    @IBOutlet weak var offersView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        offersView.layer.borderWidth = 2
        offersView.layer.borderColor = UIColor.black.cgColor
        
    }
}


class HotTrendsCouponTableViewCell: UITableViewCell {
    
    static let id = "HotTrendsCouponTableViewCell"
    
    @IBOutlet weak var offersImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}



class HotTrendsViewController: UIViewController {
    
    
    @IBOutlet weak var hotTrendsView: UIView!
    @IBOutlet weak var hotTrendsMyntraLabel: UILabel!
    @IBOutlet weak var hotTrendsDownArrowButton: UIButton!
    @IBOutlet weak var hotTrendsSearchButton: UIButton!
    @IBOutlet weak var hotTrendsLikeButton: UIButton!
    @IBOutlet weak var hotTrendsBagButton: UIButton!
    @IBOutlet weak var hotTrendsTableView: UITableView!
    
    var hotTrends = [HotTrendModel]()
    var hotTrendsImages = [HotTrendsImageModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hotTrendsTableView.register(UINib(nibName: SegmentTableViewCell.id, bundle: nil), forCellReuseIdentifier: SegmentTableViewCell.id)
        hotTrendsTableView.register(UINib(nibName: HotTrendsFreshDropsTableViewCell.id, bundle: nil), forCellReuseIdentifier: HotTrendsFreshDropsTableViewCell.id)
        createHotTrends()
        createHotTrendsImages()
        hotTrendsTableView.dataSource = self
        hotTrendsTableView.delegate = self
    }
    
    func createHotTrends() {
        for hotTrend in ["INSTA STEALS", "WINTERWEAR", "DRESESS", "TOPS", "TSHIRTS", "BOTTOMS", "FOOTWEAR", "ACCESSORIES", "MAKE UP", "JEWELLERY"] {
            hotTrends.append(HotTrendModel(name: hotTrend, image: hotTrend))
        }
    }
    
    func createHotTrendsImages() {
        for hotTrendsImage in ["hotTrends1", "hotTrends2", "hotTrends3", "hotTrends4", "hotTrends5", "hotTrends6"] {
            hotTrendsImages.append(HotTrendsImageModel(image: hotTrendsImage))
        }
    }
    
    func getCellIdentifierAtIndexPath(_ indexPath: IndexPath) -> String {
        switch indexPath.row {
        case 0:
            return SegmentTableViewCell.id
        case 1:
            return HotTrendsTableViewCell.id
        case 2:
            return HotTrendsImagesTableViewCell.id
        case 3:
            return HotTrendsOffersTableViewCell.id
        case 4:
            return HotTrendsCouponTableViewCell.id
        case 5:
            return HotTrendsFreshDropsTableViewCell.id
        default:
            return ""
        }
    }
    
    func getCellHeightAtIndexPath(_ indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 60
        case 1:
            return 100
        case 2:
            return 440
        case 3:
            return 50
        case 4:
            return 150
        case 5:
            return 60
        default:
            return 0
        }
    }
}

extension HotTrendsViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->  UITableViewCell {
        let identifier = getCellIdentifierAtIndexPath(indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let hotTrendsTableViewCell = cell as? HotTrendsTableViewCell {
            hotTrendsTableViewCell.items = hotTrends
        }
        
        if let HotTrendsImagesTableViewCell = cell as? HotTrendsImagesTableViewCell {
            HotTrendsImagesTableViewCell.images = hotTrendsImages
        }
    return cell
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = getCellHeightAtIndexPath(indexPath)
        return height
    }
}
    

