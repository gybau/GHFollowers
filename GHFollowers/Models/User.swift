//
//  User.swift
//  GHFollowers
//
//  Created by Michał Ganiebny on 18/01/2023.
//

import Foundation

struct User {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
