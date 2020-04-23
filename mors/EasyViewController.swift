//
//  EasyViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/22/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class EasyViewController: UIViewController {

    @IBOutlet weak var correctTranslation: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var phraseLabel: UILabel!
    @IBOutlet weak var textFieldSubmit: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let chars = ["a", "b", "c", "d", "e", "f", "g",
        "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r",
        "s", "t", "u", "v", "w", "x", "y", "z"]
        phraseLabel.text = chars.randomElement()!
        resultLabel.isHidden = !resultLabel.isHidden
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
                
            }
            else {
                self.resultLabel.text = "Incorrect!"
                self.correctTranslation.text = "Enter the following to proceed: " + trimmed
                self.correctTranslation.isHidden = false
            }
            self.resultLabel.isHidden = false
        })
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
