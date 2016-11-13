//
//  MenuController.swift
//  cashMiner_v3
//
//  Created by 김재하 on 2016. 11. 3..
//  Copyright © 2016년 Pabix. All rights reserved.
//

import Cocoa

class MenuController: NSObject {
    
    var is_func_on:Bool = false
    
    @IBOutlet weak var activate: NSMenuItem!
    
    @IBAction func sayHello(sender: AnyObject) {
        
        if is_func_on == false{
        NSNotificationCenter.defaultCenter().postNotificationName("com.pabix.activate", object: self)
            activate.title = "비활성화"
            is_func_on = true
            print("activate")
            
        }else{
        NSNotificationCenter.defaultCenter().postNotificationName("com.pabix.diactivate", object: self)
            activate.title = "활성화"
            is_func_on = false
            print("diactivate")
        }
        
        
    }
    

    
    @IBAction func exit(sender: AnyObject) {
        NSApp.terminate(self)
    }
    
    
}
