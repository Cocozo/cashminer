//
//  WalletView.swift
//  cashMiner_v3
//
//  Created by 김재하 on 2016. 11. 7..
//  Copyright © 2016년 Pabix. All rights reserved.
//

import Cocoa

class WalletView: NSView {
    
    
    var currentMoney = 0
    
    
    @IBOutlet weak var moneyLabel: NSTextField!
    
    let money = Money.sharedInstance;
    
    override func awakeFromNib() {
        
    updateWallet()
        
    moneyLabel.stringValue = "0"
        
    }

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    
    func updateWallet(){
        
    }
    
}
