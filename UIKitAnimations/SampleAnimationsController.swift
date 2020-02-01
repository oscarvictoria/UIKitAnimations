//
//  SampleAnimationsController.swift
//  UIKitAnimations
//
//  Created by Oscar Victoria Gonzalez  on 1/31/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class SampleAnimationsController: UIViewController {
    
    private let sampleAnimationsView = SampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //scaleAnimation()
    }
    
    
    
    private func pulsatingAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            // animate block
            self.sampleAnimationsView.pursuitLogo.transform =  CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform.identity // resotres back to original state.
            }
            // code to be executed after animation is complete
            // reset values
            // create a next animation
            //  if you want to go beyond creating an animation in this completion handler the better choice will be animate key frames.
        }
    }
    
    private func scaleAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [], animations: {
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: -40.0, y: 40.0)
            self.sampleAnimationsView.alpha = 0.0
        }) { (done) in
            UIView.animate(withDuration: 0.3) {
        self.sampleAnimationsView.swiftLogo.isHidden = false
        self.sampleAnimationsView.swiftLogo.layer.cornerRadius = self.sampleAnimationsView.swiftLogo.bounds.size.width / 2.0
            }
        }
    }
    
}





