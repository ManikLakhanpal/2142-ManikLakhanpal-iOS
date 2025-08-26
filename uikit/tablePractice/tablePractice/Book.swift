//
//  Book.swift
//  tablePractice
//
//  Created by Manik Lakhanpal on 25/08/25.
//

import Foundation

struct Book: CustomStringConvertible {
    var author: String
    var title: String
    var genre: String
    var length: String
    
    var description: String {
        return "\(title) is written by \(author) in the \(genre) genre and is \(length) pages long"
    }
}
