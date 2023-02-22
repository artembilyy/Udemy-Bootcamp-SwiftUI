//
//  QuizModel.swift
//  QuizzlerSwiftUI
//
//  Created by Artem Bilyi on 20.02.2023.
//

import Foundation

struct QuizModel {
    
    let text: String
    let answer: String
}

extension QuizModel {
    static let sampleData: [QuizModel] =
    [
        QuizModel(text: "A slug's blood is green.",
                  answer: "True"),
        QuizModel(text: "Approximately one quarter of human bones are in the feet.",
                  answer: "True"),
        QuizModel(text: "The total surface area of two human lungs is approximately 70 square metres.",
                  answer: "True"),
        QuizModel(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.",
                  answer: "True"),
        QuizModel(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.",
                  answer: "False"),
        QuizModel(text: "It is illegal to pee in the Ocean in Portugal.",
                  answer: "True"),
        QuizModel(text: "You can lead a cow down stairs but not up stairs.",
                  answer: "False"),
        QuizModel(text: "Google was originally called 'Backrub'.",
                  answer: "True"),
        QuizModel(text: "Buzz Aldrin's mother's maiden name was 'Moon'.",
                  answer: "True"),
        QuizModel(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.",
                  answer: "False"),
        QuizModel(text: "No piece of square dry paper can be folded in half more than 7 times.",
                  answer: "False"),
        QuizModel(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.",
                  answer: "True")
    ]
}
