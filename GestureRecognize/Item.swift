//
//  Item.swift
//  GestureRecognize
//
//  Created by Quan on 6/28/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class Item: UIImageView, UIGestureRecognizerDelegate {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    func setup() {
        self.userInteractionEnabled = true
        self.multipleTouchEnabled = true
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(self.onPan(_:)))
        self.addGestureRecognizer(panGesture)
    }
    
    func onPan(panGesture: UIPanGestureRecognizer) {
        if panGesture.state == .Began ||
           panGesture.state == .Changed
        {
            let point = panGesture.locationInView(self.superview)
            self.center = point
        }
    }
}
