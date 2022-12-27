//
//  Book.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 27/12/2022.
//

import Foundation

struct Book : Codable{
    
    var title : String
    var key : String
    var description: String
    var subjects : [String]
    var covers : [Int]
    
}
