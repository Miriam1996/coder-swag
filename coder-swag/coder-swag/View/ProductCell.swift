//
//  ProductCell.swift
//  coder-swag
//
//  Created by Test on 3/17/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    func updateViews(product: Product){
        productImage.image = UIImage(named:product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
