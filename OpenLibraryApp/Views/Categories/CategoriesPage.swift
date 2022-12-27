//
//  CategoryPage.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import SwiftUI

struct CategoriesPage: View {
    
    var categories : [String]
    @State var text = ""
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                ScrollView{
                    ForEach(categories,id: \.self) { category in
                        CategoryView(categoryName: category)
                    }
                }
            }.navigationTitle("Categories")
        }
    }
}

struct CategoriesPage_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesPage(categories: DataProvider().categories)
    }
}
