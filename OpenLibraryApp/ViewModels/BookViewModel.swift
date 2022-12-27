//
//  BookViewModel.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 27/12/2022.
//

import Foundation

class BookViewModel : ObservableObject {
    
    @Published var book : Book?
    
    func loadBook(from workKey:String){
        guard let url = URL(string: "https://openlibrary.org/\(workKey).json") else {
            print("url failed")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let d = data {
                print(d)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                if let book = try? decoder.decode(Book.self, from: d) {
                    DispatchQueue.main.async {
                        self.book = book
                    }
                    return
                }
            }
        }.resume()
    }
}
