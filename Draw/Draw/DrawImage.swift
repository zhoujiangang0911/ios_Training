//
//  DrawImage.swift
//  Draw
//
//  Created by 周建刚 on 15-5-4.
//  Copyright (c) 2015年 周建刚. All rights reserved.
//

import UIKit

class DrawImage: UIView {
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        uiImage = UIImage(named: "stanford.png")?.CGImage
        
    }
    
    var uiImage:CGImageRef?
    
    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
    
        //保存状态
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 10, 400)
        CGContextScaleCTM(context, 1, -1)
        CGContextDrawImage(context, CGRect(x: 0, y: 0, width: 200, height: 200), uiImage)
        //恢复状态
        CGContextRestoreGState(context)
        
        
        CGContextStrokeRect(context, CGRect(x: 50, y: 50, width: 100, height: 100))
        
    }
    
    
}
