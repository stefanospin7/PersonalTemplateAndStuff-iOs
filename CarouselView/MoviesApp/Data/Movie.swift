//
//  Movie.swift
//  MoviesApp
//
//  Created by stefano.spinelli on 15/09/22.
//

import Foundation

//Api
//https://imdb-api.com/en/API/InTheaters/***key***

enum MovieViewMoodelState {
    
    case initial
    case loading
    case loaded(movies:Movies)
    case error(errorMessage:String)
    
    
}

struct Movies:Decodable {
    let movies: [Movie]
}


struct Movie:Decodable, Identifiable {
    let id, title, fullTitle, year: String
    let image: String
}


