//
//  ProductCell.swift
//  codeswag
//
//  Created by Joban Dhot on 2019-01-20.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productimage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateviews(product: Product ){
        productimage.image = UIImage(named: product.imageName)
        productName.text = product.title
        productPrice.text = product.price
        
        
        
    }
    
}
