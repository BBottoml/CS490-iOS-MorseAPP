//
//  GameViewController.swift
//  mors
//
//  Created by Devanshi Pratiher on 4/22/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    
    
    // stuff for total score
    @IBOutlet weak var dashTwo: UILabel!
    @IBOutlet weak var dashOne: UILabel!
    @IBOutlet weak var oneHundred: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var totalScoreDash: UILabel!
    @IBOutlet weak var totalScoreLabel: UILabel!
    
    
    @IBOutlet weak var PhraseLabel: UILabel!
    @IBOutlet weak var TextFieldText: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    
    let chars = ["a", "b", "c", "d", "e", "f", "g",
           "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r",
           "s", "t", "u", "v", "w", "x", "y", "z", "people",
           "history",
           "way",
           "art",
           "world",
           "information",
           "map",
           "two",
           "family",
           "government",
           "health",
           "system",
           "computer",
           "meat",
           "year",
           "thanks",
           "music",
           "person",
           "reading",
           "method",
           "data",
           "food",
           "understanding",
           "theory",
           "law",
           "bird",
           "literature",
           "problem",
           "software",
           "control",
           "knowledge",
           "power",
           "ability",
           "economics",
           "love",
           "internet",
           "television",
           "science",
           "library",
           "nature",
           "fact",
           "product",
           "idea",
           "temperature",
           "investment",
           "area",
           "society",
           "activity",
           "story",
           "industry",
           "media",
           "thing",
           "oven",
           "community",
           "definition",
           "safety",
           "quality",
           "development",
           "language",
           "management",
           "player",
           "variety",
           "video",
           "week",
           "security",
           "country",
           "exam",
           "movie",
           "organization",
           "equipment",
           "physics",
           "analysis",
           "policy",
           "series",
           "thought",
           "basis",
           "boyfriend",
           "direction",
           "strategy",
           "technology",
           "army",
           "camera",
           "freedom",
           "paper",
           "environment",
           "child",
           "instance",
           "month",
           "truth"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.dashOne.isHidden = true
        self.dashTwo.isHidden = true
        self.oneHundred.isHidden = true
        self.score.isHidden = true
        self.totalScoreDash.isHidden = true
        self.totalScoreLabel.isHidden = true
       
        
        PhraseLabel.text = chars.randomElement()!
      
    }
        

    var counter = 0
    var questionNumber = 0

    @IBAction func onSubmit(_ sender: Any) {
        questionNumber+=1
        
        let TextField: String = TextFieldText.text!
        let Phrase: String = PhraseLabel.text!
      
        englishToMorse(content: Phrase, success: { (morse) in
              
              let trimmed = morse.trimmingCharacters(in: .whitespacesAndNewlines)

              if TextField == trimmed {
                  self.counter += 10
              }
          
          self.TextFieldText.text = ""
          self.PhraseLabel.text = self.chars.randomElement()!
        })
        
        if questionNumber == 10 {
            self.submitButton.isHidden = true 
        
            
            self.score.text = String(self.counter)
            
            self.dashOne.isHidden = false
            self.dashTwo.isHidden = false
            self.oneHundred.isHidden = false
            self.score.isHidden = false
            self.totalScoreDash.isHidden = false
            self.totalScoreLabel.isHidden = false
        }
    }
    
        
      
           
    
        /*
        func viewWillAppear(animated: Bool){
            if self.buttonChange <= 9{
                self.submitButton.isHidden = false
            }
            else if self.buttonChange == 10{
            self.submitButton.isHidden = true
            }
            
        }
 */
        /*
        var score = 0
        func finalScore(){
            englishToMorse(content: Phrase, success: { (morse) in
            
            let trimmed = morse.trimmingCharacters(in: .whitespacesAndNewlines)

            if TextField == trimmed {
                score += 10
                }
            else{
                score += 0
                }
            
        })
 */
        
        
        
        
        
        
       // func buttonAction(_ sender: AnyObject){
        //    if buttonChange >= 10{
                
        //    }
        //}
        

        

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
