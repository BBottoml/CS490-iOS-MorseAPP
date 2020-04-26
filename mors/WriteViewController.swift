//
//  WriteViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/5/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController {
    
    @IBOutlet weak var someTextField: UITextField!
    @IBOutlet weak var outPutLabel: UILabel!
    
    @IBOutlet weak var outputInMorse: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitPrint(_ sender: Any) {
        let textFieldText: String = someTextField.text!
        self.outPutLabel.text = textFieldText
        
        englishToMorse(content: textFieldText, success: { (morse) in
            self.outputInMorse.text = morse;
        })
        
        self.someTextField.text = ""
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
