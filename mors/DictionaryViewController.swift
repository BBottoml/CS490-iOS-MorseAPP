//
//  DictionaryViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/22/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit
import Foundation

class DictionaryViewController: UIViewController {
    
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var imageView: UIView!
    
    @IBOutlet weak var dictTitle: UILabel!
    
    @IBOutlet weak var lineLine: UILabel!
    
    var globalBool = false
    
    
       /* guard sender.view != nil else { return }
        
        if sender.state == .ended {
            UIView.animate(withDuration: 1.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
                   self.labelA.alpha = 0.0
               }, completion: {
                   (finished: Bool) -> Void in
                   self.labelA.text = ".-"
                   UIView.animate(withDuration: 1.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
                       self.labelA.alpha = 1.0
                       }, completion: nil)
                   })

        }
    } */
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelA.numberOfLines = 0
        self.labelB.numberOfLines = 0
        self.labelA.text = "A\nB\nC\nD\nE\nF\nG\nH\nI\nJ\nK\nL\nN"
        self.labelB.text = "M\nO\nP\nQ\nR\nS\nT\nU\nV\nW\nX\nY\nZ"
    
        self.dictTitle.textColor = UIColor.white
        self.lineLine.textColor = UIColor.white
        self.labelA.textColor = UIColor.white
        self.labelB.textColor = UIColor.white
        self.imageView.backgroundColor = UIColor.black
        //self.navigationItem.title = "Dictionary"
        //self.navigationItem.standardAppearance?.backgroundColor = UIColor.black
        
        //navigationController?.navigationBar.barTintColor = UIColor.black
        //navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func updateLetters(_ sender: UITapGestureRecognizer) {
        labelA.fadeIn()
        labelA.fadeOut()
        
        if (globalBool == false) {
    
            labelA.fadeOut(completion: {
                (finished: Bool) -> Void in
                self.labelA.text = ".-\n-...\n-.-.\n-..\n.\n..-.\n--.\n....\n..\n.---\n-.-\n.-..\n--"
            })
            labelB.fadeOut(completion: {
                (finished: Bool) -> Void in
                self.labelB.text = "-.\n---\n.--.\n--.-\n.-.\n...\n-\n..-\n...-\n.--\n-..-\n-.--\n--.."
            })

            labelA.fadeIn(completion: {
                (finished: Bool) -> Void in
            })
            
            labelB.fadeIn(completion: {
                (finished: Bool) -> Void in
            })
            
            globalBool = true
        }
        else {

            labelA.fadeOut(completion: {
                (finished: Bool) -> Void in
                self.labelA.text = "A\nB\nC\nD\nE\nF\nG\nH\nI\nJ\nK\nL\nN"
            })
            
            labelB.fadeOut(completion: {
                (finished: Bool) -> Void in
                self.labelB.text = "M\nO\nP\nQ\nR\nS\nT\nU\nV\nW\nX\nY\nZ"
            })

            labelA.fadeIn(completion: {
                (finished: Bool) -> Void in
            })
            
            labelB.fadeIn(completion: {
                (finished: Bool) -> Void in
            })
            globalBool = false
        }
        }
    
        
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


extension UIView {

    func fadeIn(_ duration: TimeInterval = 0.5, delay: TimeInterval = 0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        self.alpha = 0.0

        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
    }, completion: completion)  }

    func fadeOut(_ duration: TimeInterval = 0.5, delay: TimeInterval = 0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        self.alpha = 1.0
        
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseOut, animations: {
            self.alpha = 0.0
    }, completion: completion)
   }
}
