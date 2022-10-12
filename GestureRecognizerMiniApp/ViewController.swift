//
//  ViewController.swift
//  GestureRecognizerMiniApp
//
//  Created by STEVEN HOBERG on 10/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var moonImage: UIImageView!
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapScreenAction(_ sender: UITapGestureRecognizer) {
        view.backgroundColor = UIColor.red
        var tappedLoc = sender.location(in: view)
        labelOutlet.center = tappedLoc
    }
    
    @IBAction func moonPan(_ sender: UIPanGestureRecognizer) {
        moonImage.center = sender.location(in: view)
    }
}

