//
//  ProductVC.swift
//  E-store
//
//  Created by rihab aldabbagh on 11/18/17.
//  Copyright © 2017 rihab aldabbagh. All rights reserved.
//

import UIKit

class ProductVC: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{
    
    

    
    @IBOutlet weak var productCollection: UICollectionView!
    
    
    
    
    
    private(set) public var product = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.dataSource = self
        productCollection.delegate = self
    }

    func initProduct(category: Category){
        product = DataService.instance.getProducts(forCategoryTtile: category.title)
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath)as? ProductCell{
            let products = product[indexPath.row]
            cell.updatedViews(products: products)
            
            return cell
            
    }
    
    return ProductCell()
    
    }

}
