//
//  ViewController.swift
//  GestureRecognize
//
//  Created by Quan on 6/28/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgBell: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.imgBell.userInteractionEnabled = true
        self.imgBell.multipleTouchEnabled = true
        
        let pan = UIPanGestureRecognizer(target: self.imgBell, action: #selector(self.onPan(_:)))
        self.imgBell.addGestureRecognizer(pan)
    }
    
    func onPan(pan : UIPanGestureRecognizer) {
        if pan.state == .Began ||
           pan.state == .Changed
        {
            self.imgBell.center = pan.locationInView(self.view)
        }
    }

}

