//
//  Service.swift
//  MoviesApp
//
//  Created by stefano.spinelli on 15/09/22.
//

import Foundation
import Combine

class MovieServices: MovieService {
    func getMovies() -> AnyPublisher<Movies, Error> {
        URLSession.shared.dataTaskPublisher(for: URL(string: "https://imdb-api.com/en/API/InTheaters/***key***")!)
            .map({$0.data})
            .decode(type: Movies.self, decoder: JSONDecoder())
            .receive(on:DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    
    
    
}
