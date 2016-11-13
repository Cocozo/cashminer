//
//  Money.swift
//  cashMiner_v3
//
//  Created by 김재하 on 2016. 11. 7..
//  Copyright © 2016년 Pabix. All rights reserved.
//


// 이 객체는 싱글톤 객체입니다.
import Cocoa

class Money: NSObject {
    
    private var currentMoney = 0
    private var incomeMoney = 5
    
    
    // 싱글톤 객체로 생성합니다.
    static let sharedInstance = Money()
    
    
    
    func incomingMoney() {
        currentMoney += incomeMoney
    }
    
    func changeIncomeMoney(){
        
    }
    
    
    func getCurrentMoney() -> Int {
        return currentMoney
    }
    

}
