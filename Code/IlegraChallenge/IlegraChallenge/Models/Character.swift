//
//  Character.swift
//  IlegraChallenge
//
//  Created by Bruno Dorneles on 04/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import UIKit
import ObjectMapper
class Character: Mappable {
    var id = 0
    var name = ""
    var description = ""
    var thumbnail : String?
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        description<-map["description"]
        thumbnail<-map["thumbnail.path"]
    }
}
