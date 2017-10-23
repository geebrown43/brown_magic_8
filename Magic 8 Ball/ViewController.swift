//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Gavin Brown on 10/18/17.
//  Copyright © 2017 Gavin Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBall: UIImageView!
    var randomMagicBall : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      generateRandomBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func lemmeSeeButton(_ sender: UIButton) {
        generateRandomBall()
    }
    
    func generateRandomBall () {
        randomMagicBall = Int(arc4random_uniform(5))
        magicBall.image = UIImage(named: ballArray[randomMagicBall])
    }
    

}

