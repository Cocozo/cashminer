//
//  AppDelegate.swift
//  cashMiner_v3
//
//  Created by 김재하 on 2016. 11. 3..
//  Copyright © 2016년 Pabix. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let view = lockViewController()
    private var is_activate:Bool = false
    private var is_screen_activate = false
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        let notificationCenter = NSDistributedNotificationCenter.defaultCenter()
        
        notificationCenter.addObserver(self, selector: #selector(screenLocked), name: "com.apple.screenIsLocked", object: nil)
        
        notificationCenter.addObserver(self, selector: #selector(screenUnlocked), name: "com.apple.screenIsUnlocked", object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(EnterKeyIsPushed), name: "com.pabix.enterKeyDown", object: nil)
        
        view.prepareCustomView()
        
        addActivateObserver()
        
        view.run()
    }
    
    func addActivateObserver(){
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(actvate), name: "com.pabix.activate", object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(diactvate), name: "com.pabix.diactivate", object: nil)
    }
    
    func actvate(){
        is_activate = true
    }
    
    func diactvate(){
        is_activate = false
    }
    
//    func hello(){
//        print("hello")
//        
//    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    
    func screenLocked(){
        if is_activate == true{
            NSObject.cancelPreviousPerformRequestsWithTarget(self)
            view.run()
            is_screen_activate = true
        }
        print("lock")
    }
    
    func EnterKeyIsPushed(){
        
        if is_activate == true{
            view.stop()
            is_screen_activate = false
        }
        
    }
    
    func screenUnlocked(){
        if is_activate == true{
            if is_screen_activate == true{
                view.stop()
                is_screen_activate = false
            }
        }
        print("unlock")
    }
    
    
    
}

