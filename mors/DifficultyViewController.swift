//
//  DifficultyViewController.swift
//  mors
//
//  Created by Bradley Bottomlee on 4/26/20.
//  Copyright © 2020 Bradley Bottomlee. All rights reserved.
//

import UIKit
import ImageIO

class DifficultyViewController: UIViewController {

    @IBOutlet weak var easyButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var hardButton: UIButton!
    @IBOutlet weak var gifImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gifImage.loadGif(name: "circle")
        //navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
       // self.easyButton.applyGradient(colours: [.white, .systemGray2, .black], locations: [0.0, 1.5, 1.0])
    // self.view.applyGradient(colours: [.black, .systemGray4, .white], locations: [0.0, 1.5, 1.0])
        let borderAlpha : CGFloat = 0.7
        let cornerRadius : CGFloat = 5.0
        
        easyButton.setTitle("Easy", for: UIControl.State.normal)
        easyButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        easyButton.backgroundColor = UIColor.clear
        easyButton.layer.borderWidth = 1.0
        easyButton.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        easyButton.layer.cornerRadius = cornerRadius
        
        mediumButton.setTitle("Medium", for: UIControl.State.normal)
        mediumButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        mediumButton.backgroundColor = UIColor.clear
        mediumButton.layer.borderWidth = 1.0
        mediumButton.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        mediumButton.layer.cornerRadius = cornerRadius
        
        hardButton.setTitle("Hard", for: UIControl.State.normal)
        hardButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        hardButton.backgroundColor = UIColor.clear
        hardButton.layer.borderWidth = 1.0
        hardButton.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).cgColor
        hardButton.layer.cornerRadius = cornerRadius
        
        
        
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

import UIKit

extension UIView {
    @discardableResult
    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
        return self.applyGradient(colours: colours, locations: nil)
    }

    @discardableResult
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
}
