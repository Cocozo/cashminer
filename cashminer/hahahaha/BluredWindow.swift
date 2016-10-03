//
//  BluredWindow.swift
//  hahahaha
//
//  Created by 김재하 on 2016. 9. 22..
//  Copyright © 2016년 narin. All rights reserved.
//

import Cocoa

class BluredWindow: NSWindow {
    
    override func awakeFromNib() {
        self.styleMask = self.styleMask | NSFullSizeContentViewWindowMask
        self.titlebarAppearsTransparent = true

    }

}
