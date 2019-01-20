//
//  Product.swift
//  codeswag
//
//  Created by Joban Dhot on 2019-01-20.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import Foundation
struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    init(title: String, price: String, imageName: String) {
        self.imageName = imageName
        self.title  = title
        self.price = price
        
    }

} 
