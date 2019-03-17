//
//  DataService.swift
//  coder-swag
//
//  Created by Test on 3/11/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    private let categories = [ Category(title: "SHIRTS", imageName: "shirts.png"),Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),Category(title: "DIGITAL", imageName: "digital.png")]
    func getCategories() -> [Category] {
        return  categories
        
    }
}