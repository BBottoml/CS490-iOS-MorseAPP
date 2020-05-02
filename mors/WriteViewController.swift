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
    
    @IBOutlet weak var submitButtonColor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let borderAlpha : CGFloat = 0.7
        let cornerRadius : CGFloat = 5.0
        submitButtonColor.setTitle("Submit", for: UIControl.State.normal)
        submitButtonColor.setTitleColor(UIColor.black, for: UIControl.State.normal)
        submitButtonColor.backgroundColor = UIColor.clear
        submitButtonColor.layer.borderWidth = 1.0
        submitButtonColor.layer.borderColor = UIColor(white: 0.0, alpha: borderAlpha).cgColor
        submitButtonColor.layer.cornerRadius = cornerRadius
        //navigationController?.navigationBar.barTintColor = UIColor.black
        //navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
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
