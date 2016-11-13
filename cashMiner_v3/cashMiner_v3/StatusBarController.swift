 //
//  StatusBarController.swift
//  cashMiner_v3
//
//  Created by 김재하 on 2016. 11. 3..
//  Copyright © 2016년 Pabix. All rights reserved.
//

import Cocoa

class StatusBarController: NSObject {
    
    @IBOutlet weak var menu: NSMenu!
    
    let status : NSStatusItem! = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
    
    
    override func awakeFromNib() {
        status.title = "메뉴"
        status.menu = menu
    }

}
