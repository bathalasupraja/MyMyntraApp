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
    var freshDrops = [FreshDropsImageModel]()
    var hotTrendsViews = [HotTrendsViewsModel]()
    var hotTrendsFashions = [HotTrendsFashionsModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hotTrendsTableView.register(UINib(nibName: SegmentTableViewCell.id, bundle: nil), forCellReuseIdentifier: SegmentTableViewCell.id)
        hotTrendsTableView.register(UINib(nibName: HotTrendsFreshDropsTableViewCell.id, bundle: nil), forCellReuseIdentifier: HotTrendsFreshDropsTableViewCell.id)
        hotTrendsTableView.register(UINib(nibName: HotTrendsFreshDropsImagesTableViewCell.id, bundle: nil), forCellReuseIdentifier: HotTrendsFreshDropsImagesTableViewCell.id)
        hotTrendsTableView.register(UINib(nibName: HotTrendsFashionsTableViewCell.id, bundle: nil), forCellReuseIdentifier: HotTrendsFashionsTableViewCell.id)
        createHotTrends()
        createHotTrendsImages()
        createFreshDrops()
        createHotTrendsViews()
        createHotTrendsFashions()
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
    
    func createFreshDrops() {
        for freshDrop in ["Image 66", "Image 67", "Image 68", "Image 69", "Image 70", "Image 71", "Image 72"] {
            freshDrops.append(FreshDropsImageModel(image: freshDrop))
        }
    }
    
    func createHotTrendsViews() {
        for hotTrendsView in ["All", "Jeans", "Dresses", "Track Pants", "Trousers", "Sweaters", "Tops", "Skirts"] {
            hotTrendsViews.append(HotTrendsViewsModel(name: hotTrendsView))
        }
    }
    
    func createHotTrendsFashions() {
        for hotTrendsFashion in ["Image 73", "Image 74", "Image 75", "Image 76", "Image 77", "Image 78", "Image 79", "Image 80", "Image 81", "Image 82"] {
            hotTrendsFashions.append(HotTrendsFashionsModel(image: hotTrendsFashion))
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
        case 6:
            return HotTrendsFreshDropsImagesTableViewCell.id
        case 7:
            return HotTrendsViewsTableViewCell.id
        case 8:
            return HotTrendsFashionsTableViewCell.id
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
        case 6:
            return 250
        case 7:
            return 60
        case 8:
            return 590
        default:
            return 0
        }
    }
}

extension HotTrendsViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->  UITableViewCell {
        let identifier = getCellIdentifierAtIndexPath(indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let hotTrendsTableViewCell = cell as? HotTrendsTableViewCell {
            hotTrendsTableViewCell.items = hotTrends
        }
        
        if let hotTrendsImagesTableViewCell = cell as? HotTrendsImagesTableViewCell {
            hotTrendsImagesTableViewCell.images = hotTrendsImages
        }
        
        if let hotTrendsFreshDropsImagesTableViewCell = cell as? HotTrendsFreshDropsImagesTableViewCell {
            hotTrendsFreshDropsImagesTableViewCell.images = freshDrops
        }
        
        if let HotTrendsViewsTableViewCell = cell as? HotTrendsViewsTableViewCell {
            if indexPath.row == 7 {
                HotTrendsViewsTableViewCell.names = hotTrendsViews
            }
        }
        if let hotTrendsFashionsTableViewCell = cell as? HotTrendsFashionsTableViewCell {
            hotTrendsFashionsTableViewCell.images = hotTrendsFashions
        }
    return cell
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = getCellHeightAtIndexPath(indexPath)
        return height
    }
}
    

