//
//  BookView.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import SwiftUI

struct BookView: View {
    
    var work: Work
    
    var body: some View {
        VStack(alignment: .leading){
            AsyncImage(url: work.imageUrl){ phase in
                switch phase {
                case .success(let image) :
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                case .empty :
                    ProgressView()
                case .failure(_) :
                    Image(systemName: "photo")
                @unknown default:
                    EmptyView()
                }
            }
            .frame(width: 80, height: 80)
            .cornerRadius(5)
                
            Text(work.title).lineLimit(2).font(.headline)
            Text(work.printableAuthor).font(.caption).lineLimit(2)
        }.frame(width: 80)
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(work: Work(key: "jojo", title: "jojo", coverId: 1234, authors: [Author(key: "asd", name: "zxczc")], firstPublishYear: 1234))
    }
}
