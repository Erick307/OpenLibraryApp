//
//  Subject.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import Foundation

struct Subject : Codable, Identifiable{
    
    var key : String
    var name : String
    var workCount : Int
    var works : [Work]
    
}

extension Subject {
    var id: String {return key}
}
