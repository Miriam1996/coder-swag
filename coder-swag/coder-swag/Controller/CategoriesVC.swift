//
//  ViewController.swift
//  coder-swag
//
//  Created by Test on 3/11/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var categoryTable: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
                let category =  DataService.instance.getCategories()[indexPath.row]
                
                cell.updateViews(category: category)
                return cell
                
            }
            else{
                return CategoryCell()
        }
            
            
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier:"ProductsVC", sender:  category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
           
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

