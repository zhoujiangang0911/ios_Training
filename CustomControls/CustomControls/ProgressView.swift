//
//  ProgressView.swift
//  CustomControls
//
//  Created by 周建刚 on 15-5-5.
//  Copyright (c) 2015年 周建刚. All rights reserved.
//

import UIKit

class ProgressView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    override init(frame : CGRect){
            super.init(frame: frame)
            self.backgroundColor = UIColor(white: 1, alpha: 0)
        
    }

   required init(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    private var _progressValue : CGFloat = 0
    
    internal func getProgressValue()->CGFloat{
        return _progressValue
    }
    
    internal func setProgressValue(value:CGFloat){
        _progressValue = value
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        
        var context = UIGraphicsGetCurrentContext()
        
        var r = rect.width/2
        
       
        
        CGContextAddArc(context, r, r, r, 0, 3.1415926*2, 0)
         CGContextSetRGBFillColor(context, 0.7, 0.7, 0.7, 1)
        CGContextFillPath(context)
        
        CGContextAddArc(context, r, r, r, 0, 3.1415926*2*_progressValue, 0)
        
        CGContextAddLineToPoint(context, r, r)
        
        CGContextSetRGBFillColor(context, 0, 0, 1, 1)
        
        CGContextFillPath(context)
        
        
        
    }
    
}
