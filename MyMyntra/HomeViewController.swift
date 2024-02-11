//
//  HomeViewController.swift
//  MyMyntra
//
//  Created by Supraja on 07/01/24.
//

import UIKit


class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var myntraLabel: UILabel!
    @IBOutlet weak var downArrowButton: UIButton!
    @IBOutlet weak var kingCapImageView: UIImageView!
    @IBOutlet weak var becomeLabel: UILabel!
    @IBOutlet weak var insiderLabel: UILabel!
    @IBOutlet weak var rightArrowButton: UIButton!
    @IBOutlet weak var bellButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var bagButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchLabel: UILabel!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var micButton: UIButton!
    @IBOutlet weak var fashionView: UIView!
    @IBOutlet weak var fashionButton: UIButton!
    @IBOutlet weak var fashionLabel: UILabel!
    @IBOutlet weak var beautyView: UIView!
    @IBOutlet weak var beautyButton: UIButton!
    @IBOutlet weak var beautyLabel: UILabel!
    @IBOutlet weak var homeTableView: UITableView!
    
    
    var homeItems = [HomeItemModel]()
    var shoppingItems = [ShoppingItemModel]()
    var offersCreditImages = [OffersCreditImageModel]()
    var homeFurnishings = [HomeFurnishingModel]()
    var homeCoocks = [HomeCoockModel]()
    var homeDecors = [HomeDecorModel]()
    var allProducts = [AllProductsModel]()
    
    override func viewDidLoad() { // TODO: should be viewDidLoad()
        super.viewDidLoad()
        homeTableView.register(UINib(nibName: OffersTableViewCell.id, bundle: nil), forCellReuseIdentifier: OffersTableViewCell.id)
        homeTableView.register(UINib(nibName: DiscountTableViewCell.id, bundle: nil), forCellReuseIdentifier: DiscountTableViewCell.id)
        homeTableView.register(UINib(nibName: HomeProductsTableViewCell.id, bundle: nil), forCellReuseIdentifier: HomeProductsTableViewCell.id)
       
        createHomeItems()
        createShoppingItems()
        createOffersCreditImages()
        createHomeFurnishingImages()
        createHomeCoocks()
        createHomeDecors()
        createAllProducts()
        homeTableView.dataSource = self
        homeTableView.delegate = self
        searchView.layer.cornerRadius = 20
        searchView.layer.borderWidth = 1.5
        searchView.layer.borderColor = UIColor.lightGray.cgColor
        searchView.layer.masksToBounds = true
        fashionView.layer.cornerRadius = 20
        fashionView.layer.borderWidth = 1.5
        fashionView.layer.borderColor = UIColor.black.cgColor
        fashionView.layer.masksToBounds = true
        beautyView.layer.cornerRadius = 20
        beautyView.layer.borderWidth = 1.5
        beautyView.layer.borderColor = UIColor.black.cgColor
        beautyView.layer.masksToBounds = true      
    }
    func createHomeItems() {
        for homeItem in ["Winter Wear", "T-Shirts", "Shirts", "Shoes", "Jeans for Him", "Trousers", "Watches", "Headphones", "Perfumes", "Track pants"] {
            homeItems.append(HomeItemModel(name: homeItem, image: homeItem))
            
        }
    }
    func createShoppingItems() {
        for shoppingItem in ["Kurta sets", "Kurtas", "Sarees", "Dresses", "MakeUp", "Kids", "Jeans", "Handbags", "Ethinic Dresses", "Tops & Tees"] {
            shoppingItems.append(ShoppingItemModel(name: shoppingItem, image: shoppingItem))
        }
    }
    func createOffersCreditImages() {
        for offersCreditImage in ["icicBank", "mobicwik", "rupay"] {
            offersCreditImages.append(OffersCreditImageModel(image: offersCreditImage))
        }
    }
    
    func createHomeFurnishingImages() {
        for homeFurnishing in ["Image 39", "Image 40", "Image 41", "Image 42", "Image 43", "Image 44", "Image 45", "Image 46" ] {
            homeFurnishings.append(HomeFurnishingModel(image: homeFurnishing))
        }
    }
    
    func createHomeCoocks() {
        for homeCoock in ["Image 47", "Image 48", "Image 49", "Image 50", "Image 51", "Image 52", "Image 53"] {
            homeCoocks.append(HomeCoockModel(image: homeCoock))
        }
    }
    
    func createHomeDecors() {
        for homeDecor in ["Image 54", "Image 55", "Image 56", "Image 57"] {
            homeDecors.append(HomeDecorModel(image: homeDecor))
            
        }
    }
    
    func createAllProducts() {
        for allProduct in ["All", "Organisors"] {
            allProducts.append(AllProductsModel(name: allProduct))
        }
    }
    
    func getCellIdentifierAtIndexPath(_ indexPath: IndexPath) -> String {
        switch indexPath.row {
        case 0,1:
            return "homeCell"
        case 2:
            return OffersTableViewCell.id
        case 3:
            return DiscountTableViewCell.id
        case 4,5,6:
            return HomeFurnituresTableViewCell.id
        case 7:
            return HomeProductsTableViewCell.id
        case 8:
            return AllProductsTableViewCell.id
        default:
            return ""
        }
    }
    func getCellHeightAtIndexPath(_ indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0,1:
            return 100
        case 2:
            return 300
        case 3:
            return 40
        case 4,5,6:
            return 320
        case 7:
            return 350
        case 8:
            return 60
        default:
            return 0
        }
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->  UITableViewCell {
        print(indexPath)
        let identifier = getCellIdentifierAtIndexPath(indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let homeCell = cell as? HomeTableViewCell {
            if indexPath.row == 0 {
                homeCell.items = homeItems
            } else  {
                homeCell.items = shoppingItems
            }
        }
        if let discountTableViewCell = cell as? DiscountTableViewCell {
            discountTableViewCell.images = offersCreditImages
    
        }
        
        if let homeFurnituresTableViewCell = cell as? HomeFurnituresTableViewCell {
            if indexPath.row == 4 {
                homeFurnituresTableViewCell.items = homeFurnishings
            } else if indexPath.row == 5 {
                homeFurnituresTableViewCell.items = homeCoocks
            } else if indexPath.row == 6 {
                homeFurnituresTableViewCell.items = homeDecors
            }
        } else if let allProductsTableViewCell = cell as? AllProductsTableViewCell {
            if indexPath.row == 8 {
                allProductsTableViewCell.names = allProducts
            } else {
                
            }
        }
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = getCellHeightAtIndexPath(indexPath)
        return height
    }
}

















   
    
    

  




