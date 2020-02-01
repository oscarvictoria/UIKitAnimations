//
//  ConstrantsAnimationController.swift
//  UIKitAnimations
//
//  Created by Oscar Victoria Gonzalez  on 1/31/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ConstrantsAnimationController: UIViewController {
    
    
    @IBOutlet weak var box: UIView!
    
    @IBOutlet weak var boxYConstraint: NSLayoutConstraint!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
    }
    
    
    @IBAction func animateUp(_ sender: UIButton) {
        
        boxYConstraint.constant -= 100

        if box.frame.origin.y == 0 {return}
        
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 5.0, options: [], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    
    @IBAction func animateDown(_ sender: UIButton) {
        
        boxYConstraint.constant += 100
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 5.0, options: [], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)

    }
    
    
}
