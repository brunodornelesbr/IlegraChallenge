//
//  API.swift
//  IlegraChallenge
//
//  Created by Bruno Dorneles on 04/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import Foundation

struct API {
    static var public_key = "e11c6323c871f76499a387a9998922df"
    static var private_key = "43be77966239155c5ca5a2f7549684e5ac111208"
    static var base_url = "https://gateway.marvel.com"
    static var character_list_url = "\(API.base_url)/v1/public/characters?%@"
    
}
