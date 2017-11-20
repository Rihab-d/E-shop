//
//  DataService.swift
//  E-store
//
//  Created by rihab aldabbagh on 11/18/17.
//  Copyright © 2017 rihab aldabbagh. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
     Category(title: "HOODIES", imageName: "hoodies.png"),
      Category(title: "HATS", imageName: "hats.png"),
       Category(title: "DIGITAL", imageName: "digital.png")]
    
    
     private let hats = [
        Product(title: "Logo Graphic Beanie", imageName: "hat01.png", price: "$18"),
        Product(title: "Black Hat", imageName: "hat02.png", price: "$22"),
        Product(title: "White Hat", imageName: "hat03.png", price: "$22"),
        Product(title: "Logo SnapBack", imageName: "hat04.png", price: "$20")]
    
    
    private let hoodies = [
    Product(title: "Grey Logo Hoodie", imageName: "hoodie01.png", price: "$32"),
    Product(title: "Red Logo Hoodie", imageName: "hoodie02.png", price: "$32"),
    Product(title: "Grey Hoodie ", imageName: "hoodie03.png", price: "$30"),
    Product(title: "Black Hoodie", imageName: "hoodie04.png", price: "$30")]
    
    
    private let shirts = [
        Product(title: "Black Logo Shirt", imageName: "shirt01.png", price: "$18"),
        Product(title: "Light Grey Badge Logo Shirt", imageName: "shirt02.png", price: "$19"),
        Product(title: "Red Logo Shirt", imageName: "shirt03.png", price: "$18"),
        Product(title: "Grey Hustle Shirt", imageName: "shirt04.png", price: "$18"),
        Product(title: "Black Kickflip Shirt", imageName: "shirt05.png", price: "$18")]
    
    
 private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTtile title:String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
   
}
