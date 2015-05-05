//
//  DrawCircle.swift
//  Draw
//
//  Created by 周建刚 on 15-5-4.
//  Copyright (c) 2015年 周建刚. All rights reserved.
//

import UIKit

class DrawCircle: UIView {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func drawRect(rect: CGRect) {
        
        var context = UIGraphicsGetCurrentContext()
        
        CGContextAddArc(context, 150, 200, 100, 0, 3.14*2, 0)
        CGContextSetLineWidth(context, 10)
        
        
        
        
        CGContextStrokePath(context)
        
        
        CGContextAddArc(context, 150, 200, 100, 0, 3.14*2, 0)
        
        CGContextSetRGBFillColor(context, 1,0,0,1)
        CGContextFillPath(context)
        
        
        CGContextAddEllipseInRect(context, CGRect(x: 50, y: 400, width: 200, height: 100))
        
        CGContextStrokePath(context)
        
        
        
        
        
        
    }
    
}
