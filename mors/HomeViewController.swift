//
//  HomeViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/5/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var translateButton: UIButton!
    
    @IBOutlet weak var dictionaryButton: UIButton!
    @IBOutlet weak var gameButton: UIButton!
    @IBOutlet weak var practiceButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.black

        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        let borderAlpha : CGFloat = 0.7
        let cornerRadius : CGFloat = 5.0

        translateButton.setTitle("Translate", for: UIControl.State.normal)
        translateButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        translateButton.backgroundColor = UIColor.clear
        translateButton.layer.borderWidth = 1.0
        translateButton.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        translateButton.layer.cornerRadius = cornerRadius
        
        practiceButton.setTitle("Practice", for: UIControl.State.normal)
        practiceButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        practiceButton.backgroundColor = UIColor.clear
        practiceButton.layer.borderWidth = 1.0
        practiceButton.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        practiceButton.layer.cornerRadius = cornerRadius
        
        gameButton.setTitle("Game", for: UIControl.State.normal)
        gameButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        gameButton.backgroundColor = UIColor.clear
        gameButton.layer.borderWidth = 1.0
        gameButton.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        gameButton.layer.cornerRadius = cornerRadius
        
        dictionaryButton.setTitle("Dictionary", for: UIControl.State.normal)
        dictionaryButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        dictionaryButton.backgroundColor = UIColor.clear
        dictionaryButton.layer.borderWidth = 1.0
        dictionaryButton.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        dictionaryButton.layer.cornerRadius = cornerRadius
        
        englishToMorse(content: "Morse code is a dit and dah", success: { (morse) in
            print(morse)
        })
        
        //let english = morseToEnglish(content: "-- --- .-. ... .     -.-. --- -.. .     .. ...     .-     -.. .. -     .- -. -..     -.. .- .... ")
        // Do any additional setup after loading the view.
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
