//
//  CategoryCell.swift
//  codeswag
//
//  Created by Joban Dhot on 2019-01-19.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoreyImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
   
    func updateViews(category: Category){
       categoreyImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }
    
    }


