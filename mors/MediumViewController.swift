//
//  MediumViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/22/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class MediumViewController: UIViewController {

    @IBOutlet weak var phraseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let chars =  ["people",
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
           "marketing"]
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
