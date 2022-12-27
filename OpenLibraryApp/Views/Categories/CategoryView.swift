//
//  CategoriView.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import SwiftUI

struct CategoryView: View {
    
    let categoryName : String
    var books = ["1","2","3","4"]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink{
                CategoryPage(name: categoryName)
            }label: {
                Text(categoryName).font(.title).textCase(.uppercase).padding(.horizontal)
            }.foregroundColor(.black)
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top) {
                    ForEach(books, id: \.self) { book in
                        BookView()
                    }
                }.padding(.horizontal)
            }
        }
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryName: "love")
    }
}
