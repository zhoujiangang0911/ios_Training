//
//  DrawLines.swift
//  DrawLine
//
//  Created by 周建刚 on 15-5-4.
//  Copyright (c) 2015年 周建刚. All rights reserved.
//

import UIKit

class DrawLines: UIView {
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
        
        CGContextMoveToPoint(context, 100, 100)
        CGContextAddLineToPoint(context, 100, 200)
        CGContextAddLineToPoint(context, 100, 200)
        
        CGContextSetLineWidth(context, 5)
        CGContextStrokePath(context)

    }
}
