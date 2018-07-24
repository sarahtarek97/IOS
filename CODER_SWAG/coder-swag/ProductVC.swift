//
//  ProductVC.swift
//  coder-swag
//
//  Created by Sayed Abdo on 7/24/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ProductVC: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var productCollection : UICollectionView!

    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.dataSource = self
        productCollection.delegate = self
        // Do any additional setup after loading the view.
    }

    func initProducts(category: Category){
        products = DataService.instance.getProduct(forCategoryTitle: category.title)
        navigationItem.title = category.title
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return products.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath)as? ProductCell{
        let product = products[indexPath.row]
        cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }
    
}














