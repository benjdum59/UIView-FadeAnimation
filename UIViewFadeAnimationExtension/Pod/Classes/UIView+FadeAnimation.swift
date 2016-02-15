//
//  UIView+Animation.swift
//  AvisClient
//
//  Created by benjdum59 on 10/02/2016.
//  Copyright © 2016 benjdum59. All rights reserved.
//

import Foundation

public extension UIView {
    
    /**
     Fade in a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeIn(duration duration: NSTimeInterval = 0.3, completion:() -> Void) {
        UIView.animateWithDuration(duration, animations: {
            self.alpha = 1.0
        })
    }
    
    /**
     Fade out a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeOut(duration duration: NSTimeInterval = 0.3, completion:() -> Void) {
        UIView.animateWithDuration(duration, animations: {
            self.alpha = 0.0
        })
    }
    
}
