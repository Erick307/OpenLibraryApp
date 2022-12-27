//
//  BookView.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 26/12/2022.
//

import SwiftUI

struct BookView: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle().foregroundColor(.red).frame(width: 80, height: 80).cornerRadius(5)
            Text("comedy").font(.caption)
            Text("Titulo").font(.headline)
            Text("Author").font(.caption)
        }
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
