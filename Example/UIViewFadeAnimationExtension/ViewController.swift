//
//  ViewController.swift
//  UIViewFadeAnimationExtension
//
//  Created by benjdum59 on 02/15/2016.
//  Copyright (c) 2016 benjdum59. All rights reserved.
//

import UIKit

import UIViewFadeAnimationExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submit(sender: UIButton) {
        let alertViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Alert")
        self.addChildViewController(alertViewController)
        alertViewController.view.alpha = 0
        alertViewController.view.frame = self.view.frame
        self.view.addSubview(alertViewController.view)
        alertViewController.didMoveToParentViewController(self)
        alertViewController.view.fadeIn { () -> Void in
        }

    }

}

