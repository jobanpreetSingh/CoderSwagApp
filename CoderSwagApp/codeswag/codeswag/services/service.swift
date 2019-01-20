//
//  service.swift
//  codeswag
//
//  Created by Joban Dhot on 2019-01-19.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png"),
        Category(title: "UNDERGARMENTS", imageName: "undergarments.jpg"),
         Category(title: "EDUCATION", imageName: "Education.jpg"),
          Category(title: "FOOD", imageName: "Food.jpg"),
           Category(title: "JEANS", imageName: "jeans.jpg")
    ]
    
    private let hat = [
    Product(title: "hellooo", price: "$18" , imageName: "hat01.png"),
     Product(title: "hellooo", price: "$20" , imageName: "hat02.png"),
      Product(title: "hellooo", price: "$38" , imageName: "hat03.png"),
       Product(title: "hellooo", price: "$28" , imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "hellooo", price: "$18" , imageName: "hoodie01.png"),
        Product(title: "hellooo", price: "$20" , imageName: "hoodie02.png"),
        Product(title: "hellooo", price: "$38" , imageName: "hoodie03.png"),
        Product(title: "hellooo", price: "$28" , imageName: "hoodie04.png")
        ]
    private let shirts = [
        Product(title: "hellooo", price: "$18" , imageName: "shirt01.png"),
        Product(title: "hellooo", price: "$20" , imageName: "shirt02.png"),
        Product(title: "hellooo", price: "$38" , imageName: "shirt03.png"),
        Product(title: "hellooo", price: "$38" , imageName: "shirt05.png"),
        Product(title: "hellooo", price: "$28" , imageName: "shirt04.png")
    ]
    
    private  let digital = [Product]()
     private  let food = [Product]()
     private  let education = [Product]()
     private  let jeans = [Product]()
     private  let undergarments = [Product]()
    
    func getProdects(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "HATS":
            return gethats()
        case "SHIRTS":
           return getshirts()
        case "Digital":
       return digitalgoods()
        case "HOODIES":
        return gethoodies()
        case "UNDERGARMENTS":
            return gethoodies()
        case "JEANS":
            return getjeans()
        case "FOOD":
            return getfood()
        case "EDUCATION":
            return geteducation()
        
        
        default:
          return gethoodies()
        }
        
    }
    
    func gethoodies() -> [Product]{
        
        return hoodies
    }
    func digitalgoods() -> [Product]{
        
        return digital
    }
    func getfood() -> [Product]{
        
        return food
    }
    func geteducation() -> [Product]{
        
        return education
    }
    func getundergarments() -> [Product]{
        
        return undergarments
    }
    func getjeans() -> [Product]{
        
        return jeans
    }
    func getshirts() -> [Product]{
        
        return shirts
    }
    func gethats() -> [Product]{
        
        return hat
    }
    
    
    
    func getCategory() -> [Category]{
        return categories
        
    }
}
