//
//  MenuController.swift
//  cashminer_v2
//
//  Created by 김재하 on 2016. 10. 27..
//  Copyright © 2016년 Pabix. All rights reserved.
//

import Cocoa

class MenuController: NSObject {
    
    @IBOutlet weak var menu: NSMenu!
    
    override func awakeFromNib() {
        
    }
    
    @IBAction func QuitClicked(sender: AnyObject) {
        NSApplication.sharedApplication().terminate(self)
    }
    
    @IBAction func viewLockScreen(sender: AnyObject) {
        
        let screen = minerScreen()
        screen.perpareMainScreen()
        screen.prsentMainScreen()
        
    }
    
    
}
