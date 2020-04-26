//
//  GameViewController.swift
//  mors
//
//  Created by Devanshi Pratiher on 4/22/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var PhraseLabel: UILabel!
    @IBOutlet weak var EndGameButton: UIButton!
    @IBOutlet weak var TextFieldText: UITextField!
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
           "truth",
           "marketing", "According to all known laws", "there is no way a bee", "Barry I told you", "Those were awkward", "please welcome Dean Buzzwell", "Keep your hands and antennas", "that every small job", "One job forever", "Unless you are wearing it", "He had a paw on my throat", "six miles from here tomorrow", "we have got the sunflower patch", "This is Blue Leader", "We have roses visual", "Bring it around 30 degrees and hold", "It smells good", "Ooming in at you like a missile", "Why does his life have", "I could really get in trouble", "How should I start it", "This is a bit of a surprise to me"]
    
    var buttonChange = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        
        PhraseLabel.text = chars.randomElement()!
      
    }
        

    var counter = 0
    

    @IBAction func onSubmit(_ sender: Any) {

        
        let TextField: String = TextFieldText.text!
        let Phrase: String = PhraseLabel.text!
        
        englishToMorse(content: Phrase, success: { (morse) in
                
                let trimmed = morse.trimmingCharacters(in: .whitespacesAndNewlines)

                if TextField == trimmed {
                    self.counter += 10
                    
                }
                else {
                    self.counter += 0
                }
            
            self.TextFieldText.text = ""
            self.PhraseLabel.text = self.chars.randomElement()!
           
    
        func viewWillAppear(animated: Bool){
            if self.buttonChange <= 9{
                self.submitButton.isHidden = false
            }
            else if self.buttonChange == 10{
            self.submitButton.isHidden = true
            }
            
        }
         })
        
        func finalScore(){
            
        }
        
        
        
        
        
        
        
       // func buttonAction(_ sender: AnyObject){
        //    if buttonChange >= 10{
                
        //    }
        //}
        

        
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
