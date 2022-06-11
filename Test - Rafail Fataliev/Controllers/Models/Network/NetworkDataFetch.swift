//
//  NetworkDataFetch.swift
//  Test - Rafail Fataliev
//
//  Created by Рафаил Фаталиев on 10.06.2022.
//

import Foundation

class NetworkDataFetch {
    
    static let shared = NetworkDataFetch()
    
    private init() {}
    
    func fetchAlbum(urlString: String, response: @escaping (AlbumModel?, Error?) -> Void) {
        
        NetworkRequest.shared.requestData(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(AlbumModel.self, from: data)
                    response(albums, nil)
                } catch let jsonError{
                    print("Failed to decode JSON, \(jsonError)")
                }
                
            case .failure(let error):
                print("Error received request data: \(error.localizedDescription)")
                response(nil, error)
            }
        }
    }
    
    func fetchSongs(urlString: String, response: @escaping (SongsModel?, Error?) -> Void) {
        
        NetworkRequest.shared.requestData(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(SongsModel.self, from: data)
                    response(albums, nil)
                } catch let jsonError{
                    print("Failed to decode JSON, \(jsonError)")
                }
                
            case .failure(let error):
                print("Error received request data: \(error.localizedDescription)")
                response(nil, error)
            }
        }
    }
}
