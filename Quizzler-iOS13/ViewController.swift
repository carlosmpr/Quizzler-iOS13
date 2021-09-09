//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!

    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    let quiz = [["Four + Two equal to six", "True"], ["NyC is the Greaterr city of the world", "False"], ["Bahamas is in mexico", "False"], ["Trump love chinesse","True"]]
    
    var questionNumber = 0
    override func viewDidLoad() {
       updateUI()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        }else{
            print("Wrong!")
        }
        
        
        if( questionNumber+1 < quiz.count){
            questionNumber += 1
            
        }else{
            questionNumber = 0
        }
        
        updateUI()
      
    }
    
    func updateUI () {
        questionText.text = quiz[questionNumber][0]
    }
    
}

