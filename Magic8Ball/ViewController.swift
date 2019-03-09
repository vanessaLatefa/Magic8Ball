//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Vanessa Latefa Pampilo on 2/28/19.
//  Copyright © 2019 Vanessa Latefa Pampilo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [ "ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallindex = 0
    
    @IBOutlet weak var magicBallView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        randomBallindex = Int.random(in: 0 ... 4)
        updateBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBallindex = Int.random(in: 0 ... 4)
        updateBallImage()
    }
    
    func updateBallImage (){
        
        magicBallView.image = UIImage (named: ballArray[randomBallindex])
    }
    
    
}

