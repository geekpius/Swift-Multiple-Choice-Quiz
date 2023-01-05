//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    
    
    
    var quiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestionUI()
    }
    
    
    @IBAction func answerButton(_ sender: UIButton) {
        if quiz.checkForCorrectAnswer(answer: sender.currentTitle!){
            answerLabel.text = "Correct Answer"
            answerLabel.textColor = UIColor.green
        }else{
            answerLabel.text = "Wrong Answer"
            answerLabel.textColor = UIColor.red
        }

        quiz.nextQuestion()

        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateQuestionUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateQuestionUI(){
        let answers = quiz.getMultipleChoiceAnswers()
        questionLabel.text = quiz.getQuestionText()
        choice1.setTitle(answers[0], for: .normal)
        choice2.setTitle(answers[1], for: .normal)
        choice3.setTitle(answers[2], for: .normal)
        progressBar.progress = quiz.getProgressBarValue()
        answerLabel.text = "Question \(quiz.getQuestionNumber())"
        answerLabel.textColor = UIColor.white
    }
    


}

