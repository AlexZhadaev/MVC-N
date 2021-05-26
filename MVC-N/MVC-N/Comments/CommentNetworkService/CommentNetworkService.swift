//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Жадаев Алексей on 26.05.2021.
//

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                debugPrint(error.localizedDescription)
            }
        }
    }
}
