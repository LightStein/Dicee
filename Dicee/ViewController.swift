//
//  ViewController.swift
//  Dicee
//
//  Created by kakha on 2/21/19.
//  Copyright © 2019 kakha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceeLogoImg: UIImageView!
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeLogoPressed(_ sender: UIButton) {  // ლოგოს შესაცვლელი ღილაკის ფუნქცია
    
        if (diceeLogoImg.image == UIImage(named: "diceeLogo")){ // თუ diceeLogoImg აჩვენებს სურათს სახელად
                                                                // diceeLogo მაშინ გადაცვალოს diceeLogo2-ზე
            diceeLogoImg.image = UIImage(named: "diceeLogo2")
        }
        else{                                                   // თუ არადა პირიქით
            diceeLogoImg.image = UIImage(named: "diceeLogo")
        }
    
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    

}

