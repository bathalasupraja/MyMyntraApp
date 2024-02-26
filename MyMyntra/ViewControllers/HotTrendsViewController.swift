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

class HotTrendsVersionTableViewCell: UITableViewCell {
    
    static let id = "HotTrendsVersionTableViewCell"
    
    @IBOutlet weak var versionView: UIView!
    @IBOutlet weak var versionButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        versionButton.layer.cornerRadius = 15
        versionButton.layer.borderColor = UIColor.systemRed.cgColor
        versionButton.layer.borderWidth = 2
        versionButton.layer.masksToBounds = true
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
    var hotTrendsImage1 = [HotTrendsImageModel1]()
    var hotTrendsImage2 = [HotTrendsImageModel2]()
    var hotTrendsImage3 = [HotTrendsImageModel3]()
    var hotTrendsImage4 = [HotTrendsImageModel4]()
    var hotTrendsImage5 = [HotTrendsImageModel5]()
    
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
        createHotTrendsImage1()
        createHotTrendsImage2()
        createHotTrendsImage3()
        createHotTrendsImage4()
        createHotTrendsImage5()
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
    
    func createHotTrendsImage1() {
        for hotTrendsImage in ["Image 73", "Image 74" ] {
            hotTrendsImage1.append(HotTrendsImageModel1(image: hotTrendsImage))
        }
    }
    
    func createHotTrendsImage2() {
        for hotTrendsImage in ["Image 75", "Image 76"] {
            hotTrendsImage2.append(HotTrendsImageModel2(image: hotTrendsImage))
        }
    }
    
    func createHotTrendsImage3() {
        for hotTrendsImage in ["Image 77", "Image 78"] {
            hotTrendsImage3.append(HotTrendsImageModel3(image: hotTrendsImage))
            
        }
    }
    
    func createHotTrendsImage4() {
        for hotTrendsImage in ["Image 79", "Image 80"] {
            hotTrendsImage4.append(HotTrendsImageModel4(image: hotTrendsImage))
            
        }
    }
    
    func createHotTrendsImage5() {
        for hotTrendsImage in ["Image 81", "Image 82"] {
            hotTrendsImage5.append(HotTrendsImageModel5(image: hotTrendsImage))
            
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
        case 8,9,10,11,12:
            return HotTrendsFashionsTableViewCell.id
        case 13:
            return HotTrendsVersionTableViewCell.id
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
        case 8,9,10,11,12:
            return 320
        case 13:
            return 100
        default:
            return 0
        }
    }
}

extension HotTrendsViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
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
            if indexPath.row == 8 {
                hotTrendsFashionsTableViewCell.images = hotTrendsImage1
            } else if indexPath.row == 9 {
                hotTrendsFashionsTableViewCell.images = hotTrendsImage2
            } else if indexPath.row == 10 {
                hotTrendsFashionsTableViewCell.images = hotTrendsImage3
            } else if indexPath.row == 11 {
                hotTrendsFashionsTableViewCell.images = hotTrendsImage4
            } else if indexPath.row == 12 {
                hotTrendsFashionsTableViewCell.images = hotTrendsImage5
            }
        }
    return cell
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = getCellHeightAtIndexPath(indexPath)
        return height
    }
}
    

