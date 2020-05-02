//
//  EasyViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/22/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class EasyViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var correctTranslation: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var phraseLabel: UILabel!
    @IBOutlet weak var textFieldSubmit: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    let chars = ["a", "b", "c", "d", "e", "f", "g",
    "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r",
    "s", "t", "u", "v", "w", "x", "y", "z"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let borderAlpha : CGFloat = 0.7
        let cornerRadius : CGFloat = 5.0
        
        submitButton.setTitle("Submit", for: UIControl.State.normal)
        submitButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        submitButton.backgroundColor = UIColor.clear
        submitButton.layer.borderWidth = 1.0
        submitButton.layer.borderColor = UIColor(white: 0.0, alpha: borderAlpha).cgColor
        submitButton.layer.cornerRadius = cornerRadius
        
        nextButton.setTitle("Submit", for: UIControl.State.normal)
        nextButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        nextButton.backgroundColor = UIColor.clear
        nextButton.layer.borderWidth = 1.0
        nextButton.layer.borderColor = UIColor(white: 0.0, alpha: borderAlpha).cgColor
        nextButton.layer.cornerRadius = cornerRadius
        
        phraseLabel.text = chars.randomElement()!
        resultLabel.isHidden = true
        correctTranslation.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        let textFieldText: String = textFieldSubmit.text!
        let phrase: String = phraseLabel.text!
        
        englishToMorse(content: phrase, success: { (morse) in
            
            let trimmed = morse.trimmingCharacters(in: .whitespacesAndNewlines)

            if textFieldText == trimmed {
                self.correctTranslation.isHidden = true
                self.resultLabel.text = "Correct!"
                
            }
            else {
                self.resultLabel.text = "Incorrect!"
                self.correctTranslation.text = "Enter the following to proceed: " + trimmed
                self.correctTranslation.isHidden = false
            }
            self.resultLabel.isHidden = false
        })
    }
    
    
    @IBAction func onNextButton(_ sender: Any) {
        self.textFieldSubmit.text = ""
        self.phraseLabel.text = self.chars.randomElement()!
        self.correctTranslation.isHidden = true
        self.resultLabel.isHidden = true
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
