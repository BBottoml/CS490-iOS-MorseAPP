//
//  DictionaryViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/22/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit

class DictionaryViewController: UIViewController {
    
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var imageView: UIView!
    
    @IBAction func updateLetters(_ sender: UITapGestureRecognizer) {
        labelA.fadeIn()
        labelA.fadeOut()


        
        if(imageView != nil) {
        imageView.fadeOut(completion: {
            (finished: Bool) -> Void in
            self.imageView.removeFromSuperview()
        })

        labelA.fadeIn(completion: {
            (finished: Bool) -> Void in
            self.labelA.text = ".-"
        })
        } else {
            self.labelA.text = "A"
            print("no bueno")
        }
        
    }
    
    
    
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

extension UIView {

    func fadeIn(_ duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
    }, completion: completion)  }

    func fadeOut(_ duration: TimeInterval = 0.5, delay: TimeInterval = 1.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.3
    }, completion: completion)
   }
}
