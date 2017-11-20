//
//  ProductCell.swift
//  E-store
//
//  Created by rihab aldabbagh on 11/18/17.
//  Copyright © 2017 rihab aldabbagh. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updatedViews(products: Product){
        productImage.image = UIImage(named: products.imageName)
        productTitle.text = products.title
        productPrice.text = products.price
    }
    
}
