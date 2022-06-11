//
//  AlbumModel.swift
//  Test - Rafail Fataliev
//
//  Created by Рафаил Фаталиев on 10.06.2022.
//

import Foundation

struct AlbumModel: Decodable, Equatable {
    let results: [Album]
}

struct Album: Decodable, Equatable {
    let artistName: String
    let collectionName: String
    let artworkUrl100: String?
    let trackCount: Int
    let releaseDate: String
    let collectionId: Int
}
