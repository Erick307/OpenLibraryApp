//
//  CategoryPage.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import SwiftUI

struct CategoryPage: View {
    
    let name: String
    
    var body: some View {
        VStack{
            Text(name)
        }.navigationTitle(name).navigationBarTitleDisplayMode(.inline)
        
    }
}

struct CategoryPage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryPage(name: "JOjo")
    }
}
