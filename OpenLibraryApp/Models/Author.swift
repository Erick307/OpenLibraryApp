//
//  Author.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import Foundation

struct Author : Codable, Identifiable {
    var key : String
    var name : String
}
extension Author {
    var id: String {return key}
}
