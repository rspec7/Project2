//
//  ViewController.swift
//  Project2
//
//  Created by Tam Phan on 1/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    // Create empty array to hold all countries used in the game
    var countries = [String]()
    
    // Player's score
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding countries into the array
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        // Setting button outline
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        // Setting button outline color
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        // Shows 3 random flag images on the screen
        func askQuestion() {
            button1.setImage(UIImage(named: countries[0]), for: .normal)
            button2.setImage(UIImage(named: countries[1]), for: .normal)
            button3.setImage(UIImage(named: countries[2]), for: .normal)
        }
        
        askQuestion()
    }
}

