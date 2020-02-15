//
//  GameModelDownloadService.swift
//  PhonePe
//
//  Created by Kumar, Karthik on 15/02/20.
//  Copyright © 2020 Kumar, Karthik. All rights reserved.
//

import Foundation

class GameModelDownloadService: FileServiceable {
    
    var fileName: String {
        return "logo"
    }
    
    var ext: String {
        return ".txt"
    }
    
    func prepare() -> [GameModel]? {
        if let filePath = Bundle.main.path(forResource: fileName, ofType: ext) {
            do {
                let contents = try String(contentsOfFile: filePath)
                print(contents)
                
                return contents.parse(to: [GameModel].self)
            } catch {
                
            }
        }
        
        return nil
    }
}
