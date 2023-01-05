//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Julian Owusu on 24/10/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct Quiz{
    let quizes = [
        Question(text: "Which is the largest organ in the human body?", answers: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(text: "Five dollars is worth how many nickels?", answers: ["25", "50", "100"], correctAnswer: "100"),
        Question(text: "What do the letters in the GMT time zone stand for?", answers: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(text: "What is the French word for 'hat'?", answers: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(text: "In past times, what would a gentleman keep in his fob pocket?", answers: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(text: "How would one say goodbye in Spanish?", answers: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(text: "Which of these colours is NOT featured in the logo for Google?", answers: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(text: "What alcoholic drink is made from molasses?", answers: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(text: "What type of animal was Harambe?", answers: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(text: "Where is Tasmania located?", answers: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

    ]
    
    var questionNumber = 0
    
    mutating func nextQuestion(){
        if questionNumber < quizes.count-1{
            questionNumber += 1
        }else{
            questionNumber = 0
        }
    }
    
    func checkForCorrectAnswer(answer: String) -> Bool{
        if quizes[questionNumber].correctAnswer == answer{
            return true
        }
        
        return false
    }
    
    func getQuestionText() -> String{
        return quizes[questionNumber].text
    }
    
    func getMultipleChoiceAnswers() -> [String]{
        return quizes[questionNumber].answers
    }
    
    func getQuestionNumber() -> Int{
        var quizNumber = questionNumber
        quizNumber += 1
        return quizNumber
    }
    
    func getProgressBarValue() -> Float{
        return Float(questionNumber+1) / Float(quizes.count)
    }
    
}
