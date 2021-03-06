//
//  File.swift
//  MVC-N
//
//  Created by Жадаев Алексей on 26.05.2021.
//

import Foundation

struct Comment {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    init?(dictionary: [String : AnyObject]) {
        guard let postId = dictionary["postId"] as? Int,
              let id = dictionary["id"] as? Int,
              let name = dictionary["name"] as? String,
              let email = dictionary["email"] as? String,
              let body = dictionary["body"] as? String else { return nil }
        
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
}
