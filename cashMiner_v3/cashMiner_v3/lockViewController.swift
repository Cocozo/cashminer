//
//  StatsViewController.swift
//  cashMiner_v3
//
//  Created by 김재하 on 2016. 11. 9..
//  Copyright © 2016년 Pabix. All rights reserved.
//


// 현제 문제점
// keyDown 이라는 메소드가 작동을 안한다.

// 추가해야할 상황
// 싱글톤 객체인 Money클래스를 활용및 개선
// 위의 상기된 문제점 수정.

import Cocoa

class lockViewController: NSWindowController {
    required init(coder: NSCoder) {
        fatalError("not implemented")
    }
    
    
    @IBOutlet var view: adView!
    
    //스크린의 X,Y를 가져옵니다
    let screenX = NSScreen.mainScreen()?.frame.width
    
    let screenY = NSScreen.mainScreen()?.frame.height
    
    let adview = adViewController(nibName:"adView",
                                  bundle: NSBundle.mainBundle())
    
    //초기화구문 설정
    init() {
        
        super.init(window: nil)
        //모양과 window maskStyle 설정.
        let rect = NSMakeRect(0,
                              0,
                              screenX!,
                              screenY!)
        
        let style = NSClosableWindowMask
        
        let window = lockView(contentRect:rect,
                              styleMask:style,
                              backing:.Buffered,
                              defer:false)
        
        window.perpareWindow()
        
        //젤루 중요한 윈도우 레벨을 설정해 줍니다.
        window.level = Int(CGShieldingWindowLevel())
        
        self.window = window
        
    }
    
    // windowdidload(쓸모없음 ㅇㅇ)
    override func windowDidLoad() {
        
        super.windowDidLoad()
        
    }
    
    func prepareCustomView(){
        
//        adview.frame = NSMakeRect((screenX!/2)-250,(screenY!/2)-250,500,500)
//        
//        adview.layer?.backgroundColor = NSColor.blueColor().CGColor
//        
//        adView.drawRect(adView)
//        let text = NSTextField(frame : NSMakeRect((adview.frame.width/2)-125,(adview.frame.height/2)-125,250,250))
//        
//        text.backgroundColor = NSColor.whiteColor()
//        
//        text.stringValue = "here goes ad!!"
//        
//        adview.addSubview(text)
//        
//        self.window?.contentView?.addSubview(adview)
        
        adview?.view.setFrameOrigin(NSPoint(x: (screenX!/2)-250,
                                            y: (screenY!/2)-100))
        
        
        
        self.window?.contentView?.addSubview((adview?.view)!)
        
        let image = NSImageView(frame: NSMakeRect((screenX!/2)-50,
                                                  (screenY!/5)-50,
                                                  100,
                                                  100))
        
        let source = NSImage(named: "enter_image")
        
        image.image = source
        
        self.window?.contentView?.addSubview(image)
        
        
//        let TextLine = NSTextField(frame: NSMakeRect((screenX!/2)-250,
//                                                     (screenY!/5)-50,
//                                                     500,
//                                                     100))
//        TextLine.stringValue = "Click any Screen!"
//        TextLine.drawsBackground = false
//        TextLine.textColor = NSColor.whiteColor()
//        TextLine.font = NSFont(name: "Helvetica", size: CGFloat(48))
        
//        self.window?.contentView?.addSubview(TextLine)
        
//        
//        let test_Button = NSButton(frame: NSMakeRect(50,50,100,100))
//        
//        self.window?.contentView?.addSubview(test_Button)
        
    }
    
    // window가 나오게 합니다
    func run(){
        
        self.window?.setIsVisible(true)
        self.window?.makeKeyAndOrderFront(nil)
      //  keyDown()
        
    }
    
    
    // 키보드가 눌렸을시 반응(작동 하지 않음...)
    func keyDown(){
        NSNotificationCenter.defaultCenter().postNotificationName("com.pabix.enterKeyDown", object: self)

        
    }
    
    // Track pad 가 눌렸을시 반음(쓸모없지만, 응급처치로 넣었다.)
    override func mouseDown(theEvent: NSEvent) {
        NSNotificationCenter.defaultCenter().postNotificationName("com.pabix.enterKeyDown", object: self)
    }
    
    // window가 사라지게 합니다
    func stop(){
        
        self.window?.setIsVisible(false)
        self.window?.orderOut(nil)
        
    }
    
    // 끝난 후에 돈을 줍니다!!!
    // money 싱글톤 객체를 이용합니다!
    func finish(){
        
    }
    

    
}
