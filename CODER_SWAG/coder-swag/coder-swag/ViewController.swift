//
//  ViewController.swift
//  coder-swag
//
//  Created by Sayed Abdo on 7/23/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTable : UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? CategoryCell {
            let categories = DataService.instance.getCategories()
            let category = categories[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else{
            return CategoryCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "productVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC {
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
            
            let barBtn = UIBarButtonItem()
            barBtn.title=""
            navigationItem.backBarButtonItem = barBtn
            
        
        }
    }
    

}

