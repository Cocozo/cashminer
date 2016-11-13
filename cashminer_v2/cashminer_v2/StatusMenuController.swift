//
//  StatusMenu.swift
//  cashminer_v2
//
//  Created by 김재하 on 2016. 10. 26..
//  Copyright © 2016년 Pabix. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    
    @IBOutlet weak var menuController : MenuController!
    
    let statusItem : NSStatusItem! = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        statusItem.title = "menu"
        statusItem.menu = menuController.menu
    
    }

}
