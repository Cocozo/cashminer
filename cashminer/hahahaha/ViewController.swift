//
//  ViewController.swift
//  hahahaha
//
//  Created by 김재하 on 2016. 9. 22..
//  Copyright © 2016년 narin. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var label: NSTextField!
    
    override func viewDidLoad() {
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func aciont(sender: AnyObject) {
        
        NSAnimationContext.runAnimationGroup({  (context) in
            
            context.duration = 2

            if(self.label.alphaValue == 1){
                self.label.animator().alphaValue = 0
            } else {
                self.label.animator().alphaValue = 1
            }
            
            }, completionHandler: { () in
                
//                if(self.label.hidden == false){
//                    self.label.hidden = true
//                } else {
//                    self.label.hidden = false
//                }
//                
                
        })
        
    }

}

