//
//  ViewController.swift
//  PhonePe
//
//  Created by Kumar, Karthik on 15/02/20.
//  Copyright © 2020 Kumar, Karthik. All rights reserved.
//

import UIKit

protocol DataSource: class {
    var imageUrl: String { get }
    var name: String { get }
    
    func changeImage()
}

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    weak var dataSource: DataSource?
    
    var viewModel: GameViewModel = {
        let model = GameViewModel()
        model.prepare()
            
        return model
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        dataSource = viewModel
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        startGame()
    }
    
    func startGame() {
        if let url = dataSource?.imageUrl {
            image.imageFromUrl(urlString: url)
        }
    }
}

