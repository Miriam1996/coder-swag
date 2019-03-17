//
//  Category.swift
//  coder-swag
//
//  Created by Test on 3/11/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title: String
    private(set) public var imageName: String
    init(title:String, imageName:String){
        self.title = title
        self.imageName = imageName
    }
}

