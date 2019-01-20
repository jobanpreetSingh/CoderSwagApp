
//
//  Category.swift
//  codeswag
//
//  Created by Joban Dhot on 2019-01-19.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import Foundation
struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
