//
//  Post.swift
//  instagramApp
//
//  Created by andrew austin on 7/4/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    let user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid:NSUUID().uuidString,
            caption: "This is a test post",
            likes: 125,
            imageUrl: "batman-2",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid:NSUUID().uuidString,
            caption: "wakanda forever",
            likes: 13,
            imageUrl: "black-panther-1",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid:NSUUID().uuidString,
            caption: "im going to eat you",
            likes: 13444,
            imageUrl: "venom-1",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid:NSUUID().uuidString,
            caption: "Iron Man",
            likes: 13444,
            imageUrl: "ironman-1",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid:NSUUID().uuidString,
            caption: "Dark knight",
            likes: 135644,
            imageUrl: "batman-1",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
    ]
}
