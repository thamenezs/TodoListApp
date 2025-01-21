//
//  User.swift
//  ToDoListApp
//
//  Created by Thais Souza on 16/01/25.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
    
}
