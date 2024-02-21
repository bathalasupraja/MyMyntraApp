//
//  BrandsViewController.swift
//  MyMyntra
//
//  Created by Supraja on 18/01/24.
//

import UIKit


class BrandsSpotlightTableViewCell: UITableViewCell {
    
    static let id = "BrandsSpotlightTableViewCell"
    
    @IBOutlet weak var spotlightView: UIView!
    @IBOutlet weak var spotlightLabel: UILabel!
    
}

class BrandsFreshLaunchesTableViewCell: UITableViewCell {
    
    static let id = "BrandsFreshLaunchesTableViewCell"
    
    @IBOutlet weak var launchesView: UIView!
    @IBOutlet weak var launchesLabel: UILabel!
}


struct BrandsImageModel {
    var image: String?
}

struct SpotLightBrandModel {
    var image: String?
}

struct FreshLaunchesImageModel {
    var image: String?
}

struct EthnicImageModel {
    var image: String?
}


class BrandsViewController: UIViewController {
    
    @IBOutlet weak var brandsView: UIView!
    @IBOutlet weak var brandsMyntraLabel: UILabel!
    @IBOutlet weak var brandsDownArrowButton: UIButton!
    @IBOutlet weak var brandsSearchButton: UIButton!
    @IBOutlet weak var brandsLikeButton: UIButton!
    @IBOutlet weak var brandsBagButton: UIButton!
    @IBOutlet weak var brandsTableView: UITableView!
    
    var brandsImageFashions = [BrandsImageModel]()
    var spotLightFashions = [SpotLightBrandModel]()
    var freshLaunchesImages = [FreshLaunchesImageModel]()
    var ethnicWearImages = [EthnicImageModel]()
    var footwearImages = [FootwearImageModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brandsTableView.register(UINib(nibName: BrandsImagesTableViewCell.id, bundle: nil), forCellReuseIdentifier: BrandsImagesTableViewCell.id)
        brandsTableView.register(UINib(nibName: MostLovedEthinicWearTableViewCell.id, bundle: nil), forCellReuseIdentifier: MostLovedEthinicWearTableViewCell.id)
        brandsTableView.register(UINib(nibName: EthnicWearImageTableViewCell.id, bundle: nil), forCellReuseIdentifier: EthnicWearImageTableViewCell.id)
        brandsTableView.register(UINib(nibName: FootwareTableViewCell.id, bundle: nil), forCellReuseIdentifier: FootwareTableViewCell.id)
        brandsTableView.register(UINib(nibName: BrandsFootwearTableViewCell.id, bundle: nil), forCellReuseIdentifier: BrandsFootwearTableViewCell.id)
    
        createBrandsImageFashions()
        createSpotLightFashions()
        createFreshLaunchesImages()
        createEthnicWearImages()
        createFootwearImages()
        brandsTableView.dataSource = self
        brandsTableView.delegate = self
    }
    
    func createBrandsImageFashions() {
        for brandsImageFashion in ["Image 2", "Image 3", "Image 4", "Image 5", "Image 6", "Image 7", "Image 8", "Image 9", "Image 10", "Image 11", "Image 12", "Image 13", "Image 14" ] {
            brandsImageFashions.append(BrandsImageModel(image: brandsImageFashion))
        }
    }
    
    func createSpotLightFashions() {
        for spotLightFashion in ["Image 15", "Image 16", "Image 17", "Image 18", "Image 19", "Image 20", "Image 21", "Image 22"]  {
            spotLightFashions.append(SpotLightBrandModel(image: spotLightFashion))
        }
    }
    
    func createFreshLaunchesImages() {
        for freshLaunchesImage in ["Image 23", "Image 24", "Image 25", "Image 26", "Image 27", "Image 28"] {
            freshLaunchesImages.append(FreshLaunchesImageModel(image: freshLaunchesImage))
        }
        
    }
    
    func createEthnicWearImages() {
        for ethnicWearImage in ["Image 29", "Image 30", "Image 31", "Image 32", "Image 33", "Image 34", "Image 35", "Image 36", "Image 37", "Image 38" ] {
            ethnicWearImages.append(EthnicImageModel(image: ethnicWearImage))
        }
    }
    
    func createFootwearImages() {
        for footwearImage in ["Image 88", "Image 89", "Image 90", "Image 91", "Image 92", "Image 93", "Image 94", "Image 95", "Image 96", "Image 97"] {
            footwearImages.append(FootwearImageModel(image: footwearImage))
        }
    }

    func getCellIdentifierAtIndexPath(_ indexPath: IndexPath) -> String {
        switch indexPath.section {
        case 0:
            return BrandsTableViewCell.id
        case 1:
            return BrandsImagesTableViewCell.id
        case 2:
            return BrandsSpotlightTableViewCell.id
        case 3:
            return SpotLightBrandsTableViewCell.id
        case 4:
            return BrandsFreshLaunchesTableViewCell.id
        case 5:
            return FreshLaunchesImagesTableViewCell.id
        case 6:
            return MostLovedEthinicWearTableViewCell.id
        case 7:
            return EthnicWearImageTableViewCell.id
        case 8:
            return FootwareTableViewCell.id
        case 9:
            return BrandsFootwearTableViewCell.id
        default:
            return ""
        }
    }
    
    func getCellHeightAtIndexPath(_ indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        case 1:
            return 320
        case 2:
            return 50
        case 3:
            return 130
        case 4:
            return 60
        case 5:
            return 200
        case 6:
            return 60
        case 7:
            return 150
        case 8:
            return 60
        case 9:
            return 150
        default:
            return 0
        }
    }
}

extension BrandsViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = getCellIdentifierAtIndexPath(indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let brandsImagesTableViewCell = cell as? BrandsImagesTableViewCell {
                brandsImagesTableViewCell.brandsImages = brandsImageFashions
        }
        
        if let spotLightBrandsTableViewCell = cell as? SpotLightBrandsTableViewCell {
            spotLightBrandsTableViewCell.spotLightBrands = spotLightFashions
        }
        
        if let freshLaunchesImagesTableViewCell = cell as? FreshLaunchesImagesTableViewCell {
            freshLaunchesImagesTableViewCell.freshLaunches = freshLaunchesImages
        }
        
        if let ethnicWearImageTableViewCell = cell as? EthnicWearImageTableViewCell {
            ethnicWearImageTableViewCell.images = ethnicWearImages
        }
        
        if let brandsFootwearTableViewCell = cell as? BrandsFootwearTableViewCell {
            brandsFootwearTableViewCell.images = footwearImages
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = getCellHeightAtIndexPath(indexPath)
        return height
    }
}
