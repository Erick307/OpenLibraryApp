//
//  Work.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import Foundation

struct Work : Codable, Identifiable {
    
    var key : String
    var title : String
    var coverId : Int
    var authors : [Author]
    var firstPublishYear : Int
    
    var printableAuthor : String {
        
        guard authors.count > 0 else {
            return "anonimus"
        }
        
        return authors[0].name
    }
    
    var imageUrl : URL? {
        return URL(string: "https://covers.openlibrary.org/b/ID/\(coverId)-M.jpg")
    }
}

extension Work {
    var id : String { return key }
}
