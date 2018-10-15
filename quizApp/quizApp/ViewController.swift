//
//  ViewController.swift
//  quizApp
//
//  Created by Sayed Abdo on 10/15/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0

    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    
    }

    
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()


    }
    
    func pdateUI(){
        
        scoreLbl.text = "Score: \(score)"
        progressLbl.text = "\(questionNumber + 1)/13"
        progressBar.frame.size.width = (view.frame.size.width/13) * CGFloat(questionNumber)
        
    }
    
    func nextQuestion(){
        
        if questionNumber < 13 {
            
            questionLbl.text = allQuestions.list[questionNumber].questionText
            pdateUI()
            
        }else{
          
            let alert = UIAlertController(title: "Awesome", message: "You've finished all questions , do you want to start over", preferredStyle: .alert)
            
            let restartQuiz = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartQuiz)
            present(alert, animated: true, completion: nil)
        }
    
    
    }
    
    func checkAnswer(){
        
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
            score = score + 1
        }else{
            ProgressHUD.showError("Wrong!")
        }
        
    }
    
    func startOver(){
        
        questionNumber = 0
        score = 0
        scoreLbl.text = "Score: \(score)"
        nextQuestion()
        
    }
    


}

