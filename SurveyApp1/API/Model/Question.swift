//
//  Question.swift
//  SurveyApp1
//
//  Created by sanad barjawi on 04/04/2022.
//

import Foundation

class Survey: Codable {
    internal init(questions: [Question]) {
        self.questions = questions
    }
    
    var questions: [Question]
}

class Question: Codable {
    internal init(query: String, answers: [Answer]) {
        self.query = query
        self.answers = answers
    }
    
    var query: String
    var answers: [Answer]
}

class Answer: Codable {
    internal init(title: String, correct: Bool, isSelected: Bool = false) {
        self.title = title
        self.correct = correct
        self.isSelected = isSelected
    }
    
    var title: String
    var correct: Bool
    var isSelected: Bool? = false
}
