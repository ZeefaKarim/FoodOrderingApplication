//
//  quizViewController.swift
//  FoodOrderingApp
//
//  Created by Hardik Gopani on 2020-06-11.
//  Copyright © 2020 user174109. All rights reserved.
//

import UIKit

class quizViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
//    let quiz = [
//        ["first qustion","True"],
//        ["2nd question","True"],
//        ["3rd Question","False"]
//    ]
    
    
    //2D Array for Questions and Answers
    let quiz = [
        ["The first McDonald’s store opened in 1940","True"],
        ["Bread is Pumpernickel","True"],
        ["Almonds nuts are used in marzipan","True"],
        ["Tomato is the best selling flavour of soup in the USA","False"],
        ["A glass of water contain 10 calories","False"],
        ["Tea is the most consumed manufactured drink in the world","True"],
        ["Deer meat is known as Beef","False"],
        ["Dominos has the largest number of restaurants/stores in the world","False"],
        ["Bacardi is White Rum","True"],
        ["Pizza is healthy","False"],
        ["Chicken is a Veg. Food","False"],
        
    
    ]
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title =  "Think & Click"
        //function calling
        updateQuiz()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let enterdAnswer = sender.currentTitle
        let TrueAnswer = quiz[questionNumber][1]
        
        //If Answer is Right, Change the Button color Green
        if enterdAnswer == TrueAnswer{
            //print("right")
            sender.backgroundColor = UIColor.green
        }
        //If Answer is Wrong, Change the Button color Red
        else{
           //print("Wrong")
            sender.backgroundColor = UIColor.red
        }
        
        //For Restart the Quiz Array
        if questionNumber+1 < quiz.count{
            questionNumber = questionNumber+1
        }
        else{
            questionNumber = 0
        }
        
        // 0.2 Second time for color changing of button
        Timer.scheduledTimer(timeInterval: 0.2, target:self,
            selector:#selector(updateQuiz),//Function Calling
            userInfo:nil,
            repeats: false)
    }
    
    //@objc = Because Timer.scheduledTimer is the property of objc
    @objc func updateQuiz(){
        //For Changing Questions of Label
    
        questionLabel.numberOfLines = 0
        questionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping;
        questionLabel.sizeToFit();
        questionLabel.text = quiz[questionNumber][0]
        
        //Change color button to normal from color
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        //Loading ProgressBar
        progressBar.progress = Float(questionNumber+1) / Float(quiz.count)
    }
    
}
