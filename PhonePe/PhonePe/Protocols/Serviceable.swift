//
//  Serviceable.swift
//  PhonePe
//
//  Created by Kumar, Karthik on 15/02/20.
//  Copyright © 2020 Kumar, Karthik. All rights reserved.
//

import Foundation

protocol Serviceable: class {
    associatedtype Model
    func prepare() -> Model
}

protocol FileServiceable: Serviceable {
    var fileName: String { get }
    var ext: String { get }
}
