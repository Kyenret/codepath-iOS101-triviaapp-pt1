//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Kyenret Yakubu Ayuba on 10/5/23.
//

import UIKit

class TriviaViewController: UIViewController {
    
    //IBOutlets
    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var questionCategory: UILabel!
    @IBOutlet weak var roundedContainerView: UIView!
    @IBOutlet weak var triviaQuestionLabel: UILabel!
    @IBOutlet var answerOptionButtons: [UIButton]!
    //@IBOutlet weak var gameOverView: UIView!
    //@IBOutlet weak var gameOverLabel: UILabel!
    //@IBOutlet weak var finalScoreLabel: UILabel!
    //@IBOutlet weak var restartButton: UIButton!
    
    
    
    
    
    private var trivias = [Question] ()
    private var selectedTriviaIndex = 0
    //private var correctAnswers = 0
    
    //var  gameTrivia = triviaQuizGame()
    override func viewDidLoad() {
        super.viewDidLoad()
        //gameOverView.isHidden = true
        //set the corner radius
        //gameOverView.layer.cornerRadius = 10
       // gameOverView.layer.masksToBounds = true
        roundedContainerView.layer.cornerRadius = 10
        roundedContainerView.layer.masksToBounds = true
        trivias = createMockData()
        configure(with: trivias[selectedTriviaIndex])
    }
    private func createMockData() -> [Question] {
        let mockData1 = Question(questionnumber: "Question: 1/3", category: "Entertainment: Video Games", question: "What was the first weapon pack for 'PAYDAY'?", answer: "The Gage Weapon Pack #1", options: ["The Overkill Pack", "The Gage Weapon Pack #1", "The Gage Chivalry Pack", "The Gage Historical Pack"])
        let mockData2 = Question(questionnumber: "Question: 2/3", category: "History", question: "Which of these founding fathers of the United States of America later became president?", answer: "James Monroe", options: ["Roger Sherman", "James Monroe", "Samuel Adams", "Alexander Hamilton"])
        let mockData3 = Question(questionnumber: "Question: 3/3", category: "Entertainment: Music",question: "What is the last song on the first Panic! At the Disco album?", answer: "Build God, Then We'll Talk", options: ["I Write Sins Not Tregedies", "Lying Is The Most Fun A Girl Can Have Without Taking Her Clothes Off", "Nails for Breakfast, Tracks for Snacks", "Build God, Then We'll Talk"])
        return [mockData1, mockData2, mockData3]
    }
    private func configure(with trivia: Question) {
        questionNumber.text = trivia.questionnumber  //set the question number label text based on the current question
        questionCategory.text = trivia.category  //set the category label text based on the current question
        triviaQuestionLabel.text = trivia.question //this displayes the current question
        for (index, optionButton) in answerOptionButtons.enumerated() {
            optionButton.setTitle(trivia.options[index], for: .normal) //ensures the buttons display the correct answer choices for the current question
        }
    }
    
        
    @IBAction func didTapOptionsButton(_ sender: UIButton) {
        print("button tapped")  //confirm that an action has been triggered
        selectedTriviaIndex = min(trivias.count - 1, selectedTriviaIndex + 1)
        configure(with:trivias[selectedTriviaIndex])
    }
    
        

       
        
        
        
        
        // Do any additional setup after loading the view.
    
}

