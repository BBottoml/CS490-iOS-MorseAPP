//
//  WriteViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/5/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController {

    @IBOutlet weak var textFieldSubmit: UITextField!
    
    @IBOutlet weak var outPutLabel: UILabel!
    
    @IBOutlet weak var outputInMorse: UILabel!
    
    @IBAction func submitPrint(_ sender: Any) {
        let name: String = textFieldSubmit.text!
        outPutLabel.text = name
        
        englishToMorse(content: name, success: { (morse) in
            self.outputInMorse.text = morse;
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
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
