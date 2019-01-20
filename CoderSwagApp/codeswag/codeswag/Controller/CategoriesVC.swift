//
//  ViewController.swift
//  codeswag
//
//  Created by Joban Dhot on 2019-01-19.
//  Copyright © 2019 Joban Dhot. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return DataService.instance.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategory() [indexPath.row]
            cell.updateViews(category: category)
            return cell
            
        }
        else{
            
            return CategoryCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategory() [indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ProductVC = segue.destination as? ProductVC{
            assert(sender as? Category != nil)
            ProductVC.initProducts(category: sender as! Category)
            
           let barbtn = UIBarButtonItem()
            barbtn.title = ""
            navigationItem.backBarButtonItem = barbtn
        }
    }
}

