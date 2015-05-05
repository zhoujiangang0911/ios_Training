//
//  ViewController.swift
//  CustomControls
//
//  Created by 周建刚 on 15-5-5.
//  Copyright (c) 2015年 周建刚. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var pc: ProgressView!
   
    
    @IBAction func addProgressBtn(sender: AnyObject) {
        
        pc.setProgressValue(pc.getProgressValue()+0.1)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         pc = ProgressView(frame:CGRect (x: 100, y: 100, width: 100, height: 100))
        
               self.view.addSubview(pc)
        
    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

