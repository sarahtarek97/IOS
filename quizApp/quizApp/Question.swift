//
//  Question.swift
//  quizApp
//
//  Created by Sayed Abdo on 10/15/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import Foundation

class Question {
    
    var questionText : String
    var answer : Bool
    
    init(text:String,correctAnswer:Bool) {
        questionText = text
        answer = correctAnswer
    }
}
