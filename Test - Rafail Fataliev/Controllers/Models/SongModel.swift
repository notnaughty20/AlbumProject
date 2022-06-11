//
//  SongModel.swift
//  Test - Rafail Fataliev
//
//  Created by Рафаил Фаталиев on 10.06.2022.
//

import Foundation

struct SongsModel: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    let trackName: String?
}
