//
//  Request.swift
//  IlegraChallenge
//
//  Created by Bruno Dorneles on 04/11/18.
//  Copyright © 2018 Bruno. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import CommonCrypto
class Request {
    static func requestCharacters(offset : Int = 0,completion:@escaping(CharacterRequest?)->()){
        let ts = "\(arc4random())"
        let hashString = "\(ts)\(API.private_key)\(API.public_key)"
        let hash =  hashString.md5()!
        
        let requestParameters = "ts=\(ts)&apikey=\(API.public_key)&hash=\(hash)&offset=\(offset)"
        
        let url = String(format: API.character_list_url, requestParameters)
        Alamofire.request(url,method: .get, parameters : nil, headers : nil).responseObject(completionHandler: {(response:DataResponse<CharacterRequest>) in
            completion(response.result.value)
        })
    }
    
    
    
static func MD5(string: String) -> String {
        let messageData = string.data(using:.utf8)!
        var digestData = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        
        _ = digestData.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        
       return digestData.base64EncodedString() 
    }
}
