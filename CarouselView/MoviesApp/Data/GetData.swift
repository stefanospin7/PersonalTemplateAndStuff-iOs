//
//  GetData.swift
//  MoviesApp
//
//  Created by stefano.spinelli on 15/09/22.
//

import Foundation
import Combine

protocol MovieService {
    
    func getMovies() -> AnyPublisher<Movies, Error>
}
