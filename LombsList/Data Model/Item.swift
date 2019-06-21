//
//  Item.swift
//  LombsList
//
//  Created by Nsonsa Elombe Kisala Jr. on 6/20/19.
//  Copyright © 2019 Nsonsa Kisala Jr. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}