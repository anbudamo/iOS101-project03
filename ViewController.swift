//
//  ViewController.swift
//  Trivia
//
//  Created by Anbu Damodaran on 10/6/23.
//
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionNum: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnC: UIButton!
    @IBOutlet weak var btnD: UIButton!
    
    
    private var tQuestion = [TriviaQuestion] ()
    private var selectedQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor.systemCyan
        self.view.backgroundColor = UIColor(red: 168/255, green: 237/255, blue: 240/255, alpha: 1)
        question.layer.cornerRadius = 10
        btnA.layer.cornerRadius = 10
        btnB.layer.cornerRadius = 10
        btnC.layer.cornerRadius = 10
        btnD.layer.cornerRadius = 10
        question.layer.masksToBounds = true
        
        tQuestion = createMockData()
        configure(with: tQuestion[selectedQuestionIndex])
    }
    @IBAction func actionBtnA(_ sender: UIButton) {
        selectedQuestionIndex = min(tQuestion.count - 1, selectedQuestionIndex + 1)
        configure(with: tQuestion[selectedQuestionIndex])
    }
    @IBAction func actionBtnB(_ sender: UIButton) {
        selectedQuestionIndex = min(tQuestion.count - 1, selectedQuestionIndex + 1)
        configure(with: tQuestion[selectedQuestionIndex])
    }
    @IBAction func actionBtnC(_ sender: UIButton) {
        selectedQuestionIndex = min(tQuestion.count - 1, selectedQuestionIndex + 1)
        configure(with: tQuestion[selectedQuestionIndex])
    }
    @IBAction func actionBtnD(_ sender: UIButton) {
        selectedQuestionIndex = min(tQuestion.count - 1, selectedQuestionIndex + 1)
        configure(with: tQuestion[selectedQuestionIndex])
    }
    
    private func createMockData() -> [TriviaQuestion] {
        let mockData1 = TriviaQuestion(questionNumber: 1, category: "Human Body", question: "What percentage of the human body is made up of blood?", buttonA: "8%", buttonB: "16%", buttonC: "13%", buttonD: "10%")
        let mockData2 = TriviaQuestion(questionNumber: 2, category: "Pop-Culture", question: "Which world-renowned music star famously didn't know how to play any instruments?", buttonA: "Elton john", buttonB: "Michael Jackson", buttonC: "David Bowie", buttonD: "Madonna")
        let mockData3 = TriviaQuestion(questionNumber: 3, category: "Technology", question: "What year was the first iPhone by Apple released?", buttonA: "2005", buttonB: "2006", buttonC: "2007", buttonD: "2008")
        return[mockData1, mockData2, mockData3]
    }
    
    private func configure(with aQuestion: TriviaQuestion) {
        questionNum.text = "Question: \(aQuestion.questionNumber)/3"
        category.text = "Category: \(aQuestion.category)"
        question.text = aQuestion.question
        btnA.setTitle(aQuestion.buttonA, for: .normal)
        btnB.setTitle(aQuestion.buttonB, for: .normal)
        btnC.setTitle(aQuestion.buttonC, for: .normal)
        btnD.setTitle(aQuestion.buttonD, for: .normal)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
