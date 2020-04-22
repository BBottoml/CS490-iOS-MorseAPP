//
//  HardViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/22/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class HardViewController: UIViewController {

    @IBOutlet weak var phraseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let chars = ["According to all known laws", "there is no way a bee", "Barry I told you", "Those were awkward", "please welcome Dean Buzzwell", "Keep your hands and antennas", "that every small job", "One job forever", "Unless you are wearing it", "He had a paw on my throat", "six miles from here tomorrow", "we have got the sunflower patch", "This is Blue Leader", "We have roses visual", "Bring it around 30 degrees and hold", "It smells good", "Ooming in at you like a missile", "Why does his life have", "I could really get in trouble", "How should I start it", "This is a bit of a surprise to me"]
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
