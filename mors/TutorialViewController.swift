//
//  TutorialViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/11/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var phraseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get difficulty level eventually
        // for now just choose random character
        let chars = ["a", "b", "c", "d", "e", "f", "g",
        "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r",
        "s", "t", "u", "v", "w", "x", "y", "z"]
        phraseLabel.text = chars.randomElement()!

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
