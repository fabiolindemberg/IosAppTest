//
//  Post.swift
//  AppTesteMV
//
//  Created by Fabio Lindemberg on 14/02/19.
//  Copyright © 2019 Fábio Lindemberg. All rights reserved.
//

import Foundation

class Post : NSObject{
    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
    
    init(userId: Int, id: Int, title: String, body: String){
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
}
