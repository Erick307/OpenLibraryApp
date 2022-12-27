//
//  CategoryViewModel.swift
//  OpenLibraryApp
//
//  Created by Erick Silva on 27/12/2022.
//

import Foundation

class CategoryViewModel : ObservableObject {
    
    @Published var works: [Work] = []
    
    func loadWorks(of category: String) {
        guard let url = URL(string: "https://openlibrary.org/subjects/\(category).json") else {
            print("url failed")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let d = data {
                print(d)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                if let subject = try? decoder.decode(Subject.self, from: d) {
                    DispatchQueue.main.async {
                        self.works = subject.works
                    }
                    return
                }
            }
        }.resume()
    }
    
}
