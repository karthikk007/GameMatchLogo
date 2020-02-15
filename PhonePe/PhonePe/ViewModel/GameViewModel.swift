//
//  GameViewModel.swift
//  PhonePe
//
//  Created by Kumar, Karthik on 15/02/20.
//  Copyright © 2020 Kumar, Karthik. All rights reserved.
//

import Foundation

class GameViewModel {
    typealias Model = GameModel
    private var downloadService: GameModelDownloadService
    
    private var model: [GameModel]?  = nil
    private var index: Int = -1
    
    init(downloadService: GameModelDownloadService = GameModelDownloadService()) {
        self.downloadService = downloadService
    }
    
    func prepare() {
        model = downloadService.prepare()
        index = 0
    }
}

extension GameViewModel: DataSource {
    var imageUrl: String {
        return model?.first?.imageUrl ?? ""
    }
    
    var name: String {
        return model?.first?.name ?? ""
    }
    
    func changeImage() {
        if let model = model, model.count > 0 {
            index = index + 1
            
            if index >= model.count {
                index = 0
            }
        }
    }
}
