//
//  ProductVC.swift
//  codeswag
//
//  Created by Joban Dhot on 2019-01-20.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet weak var ProductCollection: UICollectionView!
    
private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
ProductCollection.dataSource = self
        ProductCollection.delegate = self
        
    }
    func initProducts(category: Category){
        
        products = DataService.instance.getProdects(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            
            let product = products[indexPath.row]
            cell.updateviews(product: product)
            return cell
        }
      return ProductCell()
            
            
       
    }
}
