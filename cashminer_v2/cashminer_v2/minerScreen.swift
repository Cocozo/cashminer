//
//  minerScreen.swift
//  cashminer_v2
//
//  Created by 김재하 on 2016. 10. 27..
//  Copyright © 2016년 Pabix. All rights reserved.
//  미 메소드 뷰에 쓰일 주요기능에 쓰인 두가지 펑션.
//  CGDisplayCapture
//  CGShieldingWindowLevel


import Cocoa
import ApplicationServices

class minerScreen: NSObject {

        
    @IBOutlet weak var functionView: NSView!
        
        var window : NSWindow!
        let lockFrame = NSView()
        var screenRect : NSRect!
        var windowLevel : Int32 = 0
        var windowsStyleMask = NSBorderlessWindowMask
        let styleMask = NSBorderlessWindowMask|NSResizableWindowMask
    
    
        func perpareMainScreen(){
            print("마이너뷰 생성")
            screenRect = (NSScreen.mainScreen()?.frame)!
            windowLevel = CGShieldingWindowLevel()
            
            window = NSWindow(contentRect: screenRect, styleMask: windowsStyleMask, backing: NSBackingStoreType.Buffered, defer: false, screen: NSScreen.mainScreen())
        }
    
    func prsentMainScreen() {
        let backgroundView = NSVisualEffectView(frame: screenRect)
        window.movableByWindowBackground = false
        backgroundView.material = NSVisualEffectMaterial.AppearanceBased
        backgroundView.blendingMode = NSVisualEffectBlendingMode.BehindWindow
        backgroundView.state = NSVisualEffectState.Active
        window.styleMask = styleMask
        window.contentView = backgroundView
        window.makeKeyAndOrderFront(window)
    }
    
    

    
    
}
