//
//  ContentView.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex : Int = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {
//            MainPage().tabItem {
//                Label("Main Page", systemImage: "book.closed")
//            }
            CategoriesPage().tabItem {
                    Label("Categories", systemImage: "books.vertical")
            }
            AuthorsPage().tabItem {
                    Label("Authors", systemImage: "person.3")
            }
            SearchPage().tabItem {
                    Label("Search", systemImage: "magnifyingglass")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
