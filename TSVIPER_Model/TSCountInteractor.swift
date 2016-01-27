//
//  TSCountInteractor.swift
//  TSVIPER_Model
//
//  Created by 王磊 on 16/1/20.
//  Copyright © 2016年 tarena. All rights reserved.
//

import Foundation

class TSCountInteractor: NSObject , TSCountInteractorInput {
    
    weak var output: TSCountInteratorOutPut?
    
    private var count : Int = 0
    
    internal func requestCount() {
        sendCount()
    }
    internal func increment() {
        ++count
        sendCount()
    }
    internal func decrement() {
        if canDecrement() {
            --count
            sendCount()
        }
    }
    
    private func canDecrement() -> Bool {
        return count > 0
    }
    private func sendCount() {
        output?.updateCount(count)
    }
}