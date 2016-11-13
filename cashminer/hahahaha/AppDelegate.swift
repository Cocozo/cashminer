//
//  AppDelegate.swift
//  hahahaha
//
//  Created by 김재하 on 2016. 9. 22..
//  Copyright © 2016년 narin. All rights reserved.
//

import Cocoa

@NSApplicationMain

class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var statusMenu: NSMenu!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
    }
    
    

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    
    func showStautsMenu(){
        
        var item = NSStatusBar.systemStatusBar().statusItemWithLength(CGFloat(30))
        
        item.title = "slider management"
        item.menu = statusMenu
        
        
    }


}

