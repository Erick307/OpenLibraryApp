//
//  CategoriView.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import SwiftUI

struct CategoryView: View {
    
    @StateObject var viewModel = CategoryViewModel()
    
    let categoryName : String
    
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink{
                CategoryPage(name: categoryName)
            }label: {
                Text(categoryName).font(.title).textCase(.uppercase).padding(.horizontal)
            }.foregroundColor(.black)
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top) {
                    ForEach(viewModel.works, id: \.self.id) { work in
                        NavigationLink{
                            BookPage(work: work)
                        } label: {
                            BookView(work: work)
                        }.buttonStyle(.plain)
                    }
                }.padding(.horizontal)
            }
        }.onAppear{
            viewModel.loadWorks(of: categoryName)
        }
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryName: "love")
    }
}
