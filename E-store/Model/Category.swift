//
//  Category.swift
//  E-store
//
//  Created by rihab aldabbagh on 11/18/17.
//  Copyright © 2017 rihab aldabbagh. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
