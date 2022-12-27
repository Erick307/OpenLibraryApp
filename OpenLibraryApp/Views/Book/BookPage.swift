//
//  BookPage.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 27/12/2022.
//

import SwiftUI

struct BookPage: View {
    
    @StateObject var viewModel  = BookViewModel()
    var work : Work
    
    
    var body: some View {
        ScrollView{
            VStack{
                AsyncImage(url: work.imageUrl)
                Text(work.title).font(.title).padding()
                Text(viewModel.book?.description ?? "").font(.body).padding(.horizontal).foregroundStyle(.secondary)
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(work.title)
        .onAppear{
            viewModel.loadBook(from: work.key)
        }
        
    }
}

struct BookPage_Previews: PreviewProvider {
    static var previews: some View {
        BookPage(work: Work(key: "asd", title: "ad", coverId: 1234, authors: [], firstPublishYear: 1234))
    }
}
