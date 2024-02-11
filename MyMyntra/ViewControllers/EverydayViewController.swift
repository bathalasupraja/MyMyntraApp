//
//  EverydayViewController.swift
//  MyMyntra
//
//  Created by Supraja on 18/01/24.
//

import UIKit



class EverydayViewController: UIViewController {
    
    @IBOutlet weak var everydayView: UIView!
    @IBOutlet weak var everydayMyntraLabel: UILabel!
    @IBOutlet weak var everydayDownArrowButton: UIButton!
    @IBOutlet weak var everydaySearchButton: UIButton!
    @IBOutlet weak var everydayLikeButton: UIButton!
    @IBOutlet weak var everydaysBagButton: UIButton!
    @IBOutlet weak var everydayTableView: UITableView!
    
    var trendingEssentialsImages = [TrendingEssentialsImageModel]()
    var mensCategories = [MensCategoryModel]()
    var womensCategories = [WomensCategoryModel]()
    var kidsWearCategories = [KidsWearCategoryModel]()
    var homeKitchenCategories = [HomeKitchenCategoryModel]()
    var beautyPersonalCareCategories = [BeautyPersonalCareCategoryModel]()
    var accessoriesCategories = [AccessoriesCategoryModel]()
    var sellerViews = [SellerViewModel]()
    var sellerImages = [SellerImageModel]()
    var beautySellerViews = [BeautySellerViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTrendingEssentialsImages()
        createMensCategories()
        createWomensCategories()
        createKidsWearCategories()
        createHomeKitchenCategories()
        createBeautyPersonalCareCategories()
        createAccessoriesCategories()
        createSellerViews()
        createSellerImages()
        createBeautySellerViews()
        everydayTableView.register(UINib(nibName: EverydayImageTableViewCell.id, bundle: nil), forCellReuseIdentifier: EverydayImageTableViewCell.id)
        everydayTableView.register(UINib(nibName: EverydayTrendingEssentialsTableViewCell.id, bundle: nil), forCellReuseIdentifier: EverydayTrendingEssentialsTableViewCell.id)
        everydayTableView.register(UINib(nibName: CategoriesTableViewCell.id, bundle: nil), forCellReuseIdentifier: CategoriesTableViewCell.id)
        everydayTableView.register(UINib(nibName: BestSellersTittleTableViewCell.id, bundle: nil), forCellReuseIdentifier: BestSellersTittleTableViewCell.id)
        everydayTableView.register(UINib(nibName: SellerImagesTableViewCell.id, bundle: nil), forCellReuseIdentifier: SellerImagesTableViewCell.id)
        everydayTableView.dataSource = self
        everydayTableView.delegate = self
        
    }
    
    func createTrendingEssentialsImages() {
        for trendingEssentialsImage in ["trending1", "trending2", "trending3", "trending4", "trending5", "trending6", "trending7"] {
            trendingEssentialsImages.append(TrendingEssentialsImageModel(image: trendingEssentialsImage))
        }
    }
    func createMensCategories() {
        for mensCategory in ["menswear1", "menswear2", "menswear3", "menswear4", "menswear5", "menswear6", "menswear7", "menswear8"] {
            mensCategories.append(MensCategoryModel(image: mensCategory))
        }
    }
    
    func createWomensCategories() {
        for womensCategory in ["womensWear1", "womensWear2", "womensWear3", "womensWear4", "womensWear5", "womensWear6", "womensWear7", "womensWear8"] {
            womensCategories.append(WomensCategoryModel(image: womensCategory))
        }
    }
    
    func createKidsWearCategories() {
        for kidsWearCategory in ["KidsWear1", "KidsWear2", "KidsWear3", "KidsWear4", "KidsWear5", "KidsWear6"] {
            kidsWearCategories.append(KidsWearCategoryModel(image: kidsWearCategory))
        }
    }
    
    func createHomeKitchenCategories() {
        for homeKitchenCategory in ["homeKitchen1", "homeKitchen2", "homeKitchen3", "homeKitchen4", "homeKitchen5", "homeKitchen6", "homeKitchen7", "homeKitchen8"] {
            homeKitchenCategories.append(HomeKitchenCategoryModel(image: homeKitchenCategory))
        }
    }
    
    func createBeautyPersonalCareCategories() {
        for beautyPersonalCareCategory in ["beautyPersonalcare1", "beautyPersonalcare2", "beautyPersonalcare3", "beautyPersonalcare4", "beautyPersonalcare5", "beautyPersonalcare6", "beautyPersonalcare7", "beautyPersonalcare8"] {
            beautyPersonalCareCategories.append(BeautyPersonalCareCategoryModel(image: beautyPersonalCareCategory))
        }
    }
    
    func createAccessoriesCategories() {
        for accessoriesCategory in ["accessories1", "accessories2", "accessories3", "accessories4", "accessories5", "accessories6"] {
            accessoriesCategories.append(AccessoriesCategoryModel(image: accessoriesCategory))
        }
    }
    
    func createSellerViews() {
        for sellerView in ["All", "Shorts", "Track Pants", "Tops", "Tshirts"] {
            sellerViews.append(SellerViewModel(name: sellerView))
        }
    }
    
    func createSellerImages() {
        for sellerImage in ["sellerImage1", "sellerImage2", "sellerImage3", "sellerImage4", "sellerImage5", "sellerImage6", "sellerImage7", "sellerImage8", "sellerImage9", "sellerImage10", "sellerImage11", "sellerImage12", "sellerImage13", "sellerImage14"] {
            sellerImages.append(SellerImageModel(image: sellerImage))
        }
    }
    
    func createBeautySellerViews() {
        for beautySellerView in ["All", "EthnicWear", "Dresses", "winterWear", "kurta sets", "kids"] {
            beautySellerViews.append(BeautySellerViewModel(name: beautySellerView))
            
        }
    }
    
    func getCellHeightAtIndexPath(_ indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 790
        case 1:
            return 220
        case 2:
            return 250
        case 3,4,5,6,7,8:
            return 155
        case 9:
            return 60
        case 10:
            return 60
        case 11:
            return 290
        case 12:
            return 60
        default:
            return 0
        }
    }
    
    func getCellIdentifierAtIndexPath(_ indexPath: IndexPath) -> String {
        switch indexPath.row {
        case 0:
            return EverydayImageTableViewCell.id
        case 1:
            return EverydayTrendingEssentialsTableViewCell.id
        case 2:
            return PriceStoreTableViewCell.id
        case 3,4,5,6,7,8:
            return CategoriesTableViewCell.id
        case 9:
            return BestSellersTittleTableViewCell.id
        case 10:
            return BestSellersTableViewCell.id
        case 11:
            return SellerImagesTableViewCell.id
        case 12:
            return BeatySellersTableViewCell.id
        default:
            return ""
        }
    }
}
extension EverydayViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = getCellIdentifierAtIndexPath(indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let everydayTrendingEssentialsTableViewCell = cell as? EverydayTrendingEssentialsTableViewCell {
            everydayTrendingEssentialsTableViewCell.images = trendingEssentialsImages
        }
        
        if let categoriesTableViewCell = cell as? CategoriesTableViewCell {
            if indexPath.row == 3 {
                categoriesTableViewCell.categories = mensCategories
            } else if indexPath.row == 4 {
                categoriesTableViewCell.categories = womensCategories
            } else if indexPath.row == 5 {
                categoriesTableViewCell.categories = kidsWearCategories
            } else  if indexPath.row == 6 {
                categoriesTableViewCell.categories = homeKitchenCategories
            } else if indexPath.row == 7 {
                categoriesTableViewCell.categories = beautyPersonalCareCategories
            } else if indexPath.row == 8 {
                categoriesTableViewCell.categories = accessoriesCategories
            } else {
                
            }
        }
        
        if let bestSellersTableViewCell = cell as? BestSellersTableViewCell {
            if indexPath.row == 10 {
            bestSellersTableViewCell.names = sellerViews
            } else {
                
            }
        }
        if let sellerImagesTableViewCell = cell as? SellerImagesTableViewCell {
            if indexPath.row == 11 {
                sellerImagesTableViewCell.sellerImage = sellerImages
            }
        }
        if let BeatySellersTableViewCell = cell as? BeatySellersTableViewCell {
            if indexPath.row == 12 {
                BeatySellersTableViewCell.names = beautySellerViews
            }
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = getCellHeightAtIndexPath(indexPath)
        return height
    }
}
    
