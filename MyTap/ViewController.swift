//
//  ViewController.swift
//  MyTap
//
//  Created by Константин Каратанас on 11/6/18.
//  Copyright © 2018 Константин Каратанас. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var endTopLabel: UILabel!
    @IBOutlet weak var endBottomLabel: UILabel!
    
    @IBOutlet weak var endButton: UIButton!
    

    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        
        endButton.isHidden = true
        endTopLabel.isHidden = true
        endBottomLabel.isHidden = true
        
        topLabel.transform = CGAffineTransform(rotationAngle: 3.14)
        endTopLabel.transform = CGAffineTransform(rotationAngle: 3.14)

    }
    
    @IBAction func topButton(_ sender: Any) {
        score += 1
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        testScore()

    }
    @IBAction func bottomButton(_ sender: Any) {
        score -= 1
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
        testScore()
    }
    func testScore(){
        if score >= 10{
            endButton.isHidden = false
            endTopLabel.isHidden = false
            endBottomLabel.isHidden = false
            
            endTopLabel.text = "Winner"
            endBottomLabel.text = "Loser"
            
        }else if score <= -10 {
            endButton.isHidden = false
            endTopLabel.isHidden = false
            endBottomLabel.isHidden = false
            
            endTopLabel.text = "Looser"
            endBottomLabel.text = "Winner"
            
        }
    }
    
    @IBAction func endButton(_ sender: Any) {
        endButton.isHidden = true
        endTopLabel.isHidden = true
        endBottomLabel.isHidden = true
        
        score = 0
        topLabel.text = "\(score)"
        bottomLabel.text = "\(score)"
    }
    



}

