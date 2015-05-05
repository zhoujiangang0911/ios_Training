//
//  MyView.swift
//  CustomView2
//
//  Created by 周建刚 on 15-5-5.
//  Copyright (c) 2015年 周建刚. All rights reserved.
//

import UIKit

 class MyView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    @IBInspectable var str :String = "hello"
    
    
    @IBInspectable var boardWidth :CGFloat = 0
    
    
    
        
    
    

    
    override func drawRect(rect: CGRect) {
        // Drawing code
    }

    

}
