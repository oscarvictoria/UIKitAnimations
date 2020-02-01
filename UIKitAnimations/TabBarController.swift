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
        
        let firstViewController = SampleAnimationsController()
        
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        let secondViewController = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        
        guard let viewcontroller = secondViewController.instantiateViewController(identifier: "ConstrantsAnimationController") as? ConstrantsAnimationController else {
            fatalError("could not get storyboard")
        }
        
        
        viewcontroller.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        
        
        
        let tabBarList = [firstViewController, viewcontroller]
        
        viewControllers = tabBarList
        
    }
    
    
    
    
}
