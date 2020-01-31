//
//  TabBarController.swift
//  UIKitAnimations
//
//  Created by Oscar Victoria Gonzalez  on 1/31/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set viewControllers for the tab bar
        // in our app we will have two tabs
        let firstViewController = SampleAnimationsController()
        let secondViewController = ConstrantsAnimationController()
        
        viewControllers = [firstViewController, secondViewController]
        
    }
    

  

}
