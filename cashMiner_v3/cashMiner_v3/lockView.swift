//
//  StatsView.swift
//  cashMiner_v3
//
//  Created by 김재하 on 2016. 11. 9..
//  Copyright © 2016년 Pabix. All rights reserved.
//

import Cocoa

class lockView: NSWindow {
    
//    let adview = NSTextField()
    
    func perpareWindow(){
        
        let visualView = NSVisualEffectView(frame: NSMakeRect(0,0,0,0))
        
        visualView.material = NSVisualEffectMaterial.Dark
        
        visualView.blendingMode = NSVisualEffectBlendingMode.BehindWindow
        
        visualView.state = NSVisualEffectState.Active
        
        self.contentView = visualView
        
        
//        adview.frame = NSMakeRect(250,250,500,500)
//        
//        adview.layer?.backgroundColor = NSColor.blueColor().CGColor
//        self.contentView?.addSubview(adview)
        
        
    }

//    override func awakeFromNib() {
//        //self.setFrame(NSMakeRect(500, 500, 0, 0), display: true)
//        let visualView = NSVisualEffectView(frame: NSMakeRect(0,0,0,0))
//        visualView.material = NSVisualEffectMaterial.Dark
//        visualView.blendingMode = NSVisualEffectBlendingMode.BehindWindow
//        visualView.state = NSVisualEffectState.Active
//        
//        self.contentView = visualView
//        
//        
//        //self.setFrame(NSMakeRect(500, 500, 0, 0), display: true)
//        
//        }
    
    override func keyDown(theEvent: NSEvent) {
        super.keyDown(theEvent)
        Swift.print("\(theEvent.keyCode)")
    NSNotificationCenter.defaultCenter().postNotificationName("com.pabix.enterKeyDown", object: self)
        
        
    }
    

    
}
