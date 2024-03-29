//
//  ViewController.swift
//  Dicee
//
//  Created by Angela Yu on 25/01/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    //let avengers = ["hulk", "thor", "ironman", "redhulk", "spiderman", "captainamerica", "deadpool", ]
    
    let diceArray = ["hulk", "thor", "ironman", "redhulk", "spiderman", "captainamerica", "deadpool", ]
    
    //refactor
    //@IBOutlet weak var avengersImageView1: UIImageView!
    //@IBOutlet weak var avengersImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            
        updateDiceImages()
   
    }
    
    func updateDiceImages() {
        
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    
    
}

