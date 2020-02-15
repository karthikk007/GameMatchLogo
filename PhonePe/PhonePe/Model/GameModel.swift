//
//  GameModel.swift
//  PhonePe
//
//  Created by Kumar, Karthik on 15/02/20.
//  Copyright © 2020 Kumar, Karthik. All rights reserved.
//

import Foundation

struct GameModel {
    let imageUrl: String
    let name: String
}

extension GameModel: Codable {
    enum CodingKeys: String, CodingKey {
        case imageUrl = "imgUrl"
        case name = "name"
    }
}


