//
//  CategoryCell.swift
//  E-store
//
//  Created by rihab aldabbagh on 11/18/17.
//  Copyright © 2017 rihab aldabbagh. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }


}
