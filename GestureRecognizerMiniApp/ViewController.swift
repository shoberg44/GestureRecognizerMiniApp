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
    @IBOutlet weak var earthOne: UIImageView!
    
    @IBOutlet weak var earthTwo: UIImageView!
    @IBOutlet weak var house: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapScreenAction(_ sender: UITapGestureRecognizer) {
        view.backgroundColor = UIColor.red
        var tappedLoc = sender.location(in: view)
        labelOutlet.center = tappedLoc
    }
    
    @IBAction func housePan(_ sender: UIPanGestureRecognizer) {
        house.center = sender.location(in: view)
    }
    @IBAction func earthPanTwo(_ sender: UIPanGestureRecognizer) {
        earthOne.center = sender.location(in: view)
    }
    @IBAction func earthPanOne(_ sender: UIPanGestureRecognizer) {
        earthTwo.center = sender.location(in: view)
    }
    @IBAction func moonPan(_ sender: UIPanGestureRecognizer) {
        moonImage.center = sender.location(in: view)
    }
}

