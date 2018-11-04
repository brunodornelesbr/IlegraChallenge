//
//  CharacterRequest.swift
//  IlegraChallenge
//
//  Created by Bruno Dorneles on 04/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import UIKit
import ObjectMapper
class CharacterRequest: Mappable {
    var code = 0
    var offset = 0
    var limit = 0
    var total = 0
    var count = 0
    var characters = [Character]()
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        code <- map["code"]
        offset <- map["data.offset"]
        limit <- map["data.limit"]
        total <- map["data.total"]
        count <- map["count"]
        characters<-map["data.results"]
    }
}
