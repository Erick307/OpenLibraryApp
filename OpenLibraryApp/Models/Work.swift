//
//  Work.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import Foundation

struct Work : Codable, Identifiable {
    
    var key : String
    var coverId : String
    var authors : [Author]
    var firstPublishYear : Int
    
}

extension Work {
    var id : String { return key }
}
