//
//  DrawBoard.swift
//  Draw
//
//  Created by 周建刚 on 15-5-5.
//  Copyright (c) 2015年 周建刚. All rights reserved.
//

import UIKit

class DrawBoard: UIView {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var path = CGPathCreateMutable()
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        var p = touches.anyObject()?.locationInView(self)
        var a = p?.x
        var b = p?.y
        println("begin\(a)")
        println("begin\(b)")
        var aa:CGFloat = a!
        var bb:CGFloat = b!
        println("++++begin\(aa)")
        println("++++begin\(bb)")
        CGPathMoveToPoint(path, nil, aa, bb)
    }
    
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        var p = touches.anyObject()?.locationInView(self)
        var a = p?.x
        var b = p?.y
        println("move\(a)")
        println("move\(b)")
        var aa:CGFloat = a!
        var bb:CGFloat = b!
        println("++++move\(aa)")
        println("++++move\(bb)")
        CGPathAddLineToPoint(path, nil, aa, bb)
        setNeedsDisplay()
    }
    
    
    
    override func drawRect(rect: CGRect) {
        
        var context = UIGraphicsGetCurrentContext()
        
//        var path = CGPathCreateMutable()
//
//        CGPathMoveToPoint(path, nil, 100, 100)
//        
//        CGPathAddLineToPoint(path, nil, 200, 200)
        println("drawrect")
         println(path)
        CGContextAddPath(context, path)
        
        CGContextStrokePath(context)
        
    }
}
