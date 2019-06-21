//
//  Category.swift
//  LombsList
//
//  Created by Nsonsa Elombe Kisala Jr. on 6/20/19.
//  Copyright © 2019 Nsonsa Kisala Jr. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    
    let items = List<Item>()
}
