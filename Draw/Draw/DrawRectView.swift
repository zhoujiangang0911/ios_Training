//
//  DrawRectView.swift
//  Draw
//
//  Created by 周建刚 on 15-5-4.
//  Copyright (c) 2015年 周建刚. All rights reserved.
//

import UIKit

class DrawRectView: UIView {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
        
        CGContextAddRect(context, CGRect(x: 100, y: 100, width: 100, height: 100))
        CGContextSetRGBFillColor(context, 1, 0, 0, 1)
        CGContextFillPath(context)
        CGContextSetLineWidth(context, 5)
        
        CGContextSetRGBStrokeColor(context, 0, 1, 0, 1)
        CGContextStrokeRect(context, CGRect(x: 100, y: 100, width: 100, height: 100))
    }
    
}
