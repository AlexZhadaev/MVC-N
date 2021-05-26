//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Жадаев Алексей on 26.05.2021.
//

import Foundation

struct GetCommentResponse {
    typealias JSON = [[String: AnyObject]]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? JSON else { throw NetworkError.internetError }
        var comments = [Comment]()
        for dict in array {
            guard let comment = Comment(dictionary: dict) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
