import UIKit
//
// Comment.swift
// MobileAcebook
//
// Created by kevin eboda on 18/04/2024.
//
import Foundation
import SwiftUI
class Comment: Decodable {
    var _id: String
    // var underPost: String
    var message: String
    var createdAt: String
    var createdBy: CreatedBy
    struct CreatedBy: Decodable { // Add a nested struct for createdBy
        var _id: String
        var username: String
        var profilePicture: String?
    }//createdBY
    init(_id:String, message: String, createdAt: String, createdBy: CreatedBy){
        self._id = _id
        // self.underPost = underPost
        self.message = message
        self.createdAt = createdAt
        self.createdBy = createdBy
    }//init
    func constructedComment() -> String {
        return "Comment(\(self._id), \"\(self.message)\", \"\(self.createdAt)\")"
    }
}
  struct CommentsResponse: Decodable {
    let message: String
    let comments: [Comment]
    let token: String
  }

class CommentsStore: ObservableObject {

    @Published var comments: [Comment] = []
    
    func getCommentsByPost(postId: String, completion: @escaping ([Comment]) -> Void) {
        var request = URLRequest(url: URL(string: "http://localhost:3000/comments/662127acfdf76f723ed0074f")!)
        let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjYxZTc3MDc4ZDhlZjExMTE4NTQ4NTE3IiwiaWF0IjoxNzEzNTMzNjQyLCJleHAiOjE3MTM1MzQyNDJ9.6jc9dVlSlQkUEO9fFD-a-6l3hm_ZSpySEhW8hL_VTj8"
        request.httpMethod = "GET"
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        //  request.setValue("661d5262e21f06f5b53ab545", forHTTPHeaderField: "user_id")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
                return
            }
            guard let data = data else {
                print("No data received")
                return
            }
            print("Received data:", String(data: data, encoding: .utf8) ?? "")
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            do {
                let response = try decoder.decode(CommentsResponse.self, from: data)
                self.comments = response.comments
                completion(response.comments)
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
        task.resume()
    }
    func createNewComment(message: String, completion: @escaping ([Comment]) -> Void) {
        var request = URLRequest(url: URL(string: "http://localhost:3000/comments/662127acfdf76f723ed0074f")!)
        let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiNjYxZTc3MDc4ZDhlZjExMTE4NTQ4NTE3IiwiaWF0IjoxNzEzNTMzNjQyLCJleHAiOjE3MTM1MzQyNDJ9.6jc9dVlSlQkUEO9fFD-a-6l3hm_ZSpySEhW8hL_VTj8"
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let parameters: [String:Any] = ["message":message]
        guard let jsonData = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {
            print("Error converting parameters to JSON data")
            return
        }
        request.httpBody = jsonData
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
                return
            }
            guard let data = data else {
                print("No data received")
                return
            }
        }
        task.resume()
    }
}
//CommentsStore.getCommentsByPost { comment, error in
//    if let commment = comment {
//        for comment in CommentsStore.comments {
//            print(comment)
//        }
//    } else if let error = error {
//        print("Error: \(error.localizedDescription)")
//    }
//}
// Call the getCommentsByPost function
// let comment = Comment(_id: "12", underPost: "44", message: "this is a new comment", createdAt: "now", createdBy: Comment.CreatedBy(_id: "5675", username: "kevin", profilePicture: ""))
let commentStoreInstance = CommentsStore()


commentStoreInstance.getCommentsByPost(postId: "662127acfdf76f723ed0074f") { comments in
    // This closure will be executed when the network request is completed
    // 'comments' is the array of Comment objects received from the server
    // You can use the comments array here in your application logic
    
    // Example: Print each comment's text
    for comment in comments {
        print(comment.constructedComment())
    }
}



////print(comment)
//// Call the createNewComment function
//getCommentsByPost() { comment in
//  // This closure will be executed after the request completes
//  // You can handle the response here, for example, updating UI or performing other tasks
//  print("New comment created successfully")
//}









