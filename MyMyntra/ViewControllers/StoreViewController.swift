//
//  ViewController.swift
//  MyMyntra
//
//  Created by Supraja on 06/01/24.
//

import UIKit

struct StoreModel {
    var name: String
    var image: String?
}

class StoreViewController: UIViewController  {
    
    @IBOutlet weak var myntraTableView: UITableView!
    
    var stores = [StoreModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createStores()
        myntraTableView.dataSource = self
        myntraTableView.delegate = self
    }
    
    func createStores() {
        let myntraStore = StoreModel(name: "Myntra", image: "myntra-into-image1")
        stores.append(myntraStore)
        let fwdStore = StoreModel(name: "FWD", image: "myntra-into-image2")
        stores.append(fwdStore)
        let luxeStore = StoreModel(name: "LUXE", image: "myntra-into-image3")
        stores.append(luxeStore)
    }
    
}
    
extension StoreViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        stores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StoreTableViewCell.id, for: indexPath)
        if let storesCell = cell as? StoreTableViewCell {
            let store = stores[indexPath.row]
            storesCell.prepareStore(store)
        }
        return cell
    }
    
}

extension StoreViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = self.view.frame.size.height
        return height/5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "MyntraStore") {
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}


    
    
    

    





