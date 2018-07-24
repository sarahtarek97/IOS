//
//  DataService.swift
//  coder-swag
//
//  Created by Sayed Abdo on 7/23/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import Foundation

class DataService {

    static let instance = DataService()
    
    private let categories = [
    
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HODDIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    
    ]

    private let hats = [
    
    Product(title: "Devslope logo Graphic beanie", price: "$18", imageName: "hat01.png"),
    Product(title: "Devslope logo Hat black", price: "$22", imageName: "hat02.png"),
    Product(title: "Devslope logo Hat white", price: "$22", imageName: "hat03.png"),
    Product(title: "Devslope logo Snapback", price: "$20", imageName: "hat04.png")
    
    ]
    
    private let hoodies = [
    
        Product(title: "Devslope Logo Hoodie Grey", price: "$33", imageName: "hoodies01.png"),
        Product(title: "Devslope Logo Hoodie Red", price: "$34", imageName: "hoodies02.png"),
        Product(title: "Devslope Hoodie Grey", price: "$32", imageName: "hoodies03.png"),
        Product(title: "Devslope Hoodie Black", price: "$32", imageName: "hoodies04.png")
    ]
    
    private let shirts = [
    
        Product(title: "Devslop Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslop Logo Shirt Light Grey", price: "$18", imageName: "shirt02.png"),
        Product(title: "Devslop Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$19", imageName: "shirt04.png"),
        Product(title: "Kickflip Studio Black", price: "$18", imageName: "shirt05.png")
    
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories ()-> [Category]{
    
    return categories
    
    }
    
    func getProduct(forCategoryTitle title:String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOOSIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    
    }
    func getShirts()->[Product]{
        return shirts
    }
    func getHats()->[Product]{
        return hats
    }
    func getHoodies()->[Product]{
        return hoodies
    }
    func getDigitalGoods()->[Product]{
        return digitalGoods
    }
    
    
    
}


















