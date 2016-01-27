//
//  TSCountPresenter.swift
//  TSVIPER_Model
//
//  Created by 王磊 on 16/1/20.
//  Copyright © 2016年 tarena. All rights reserved.
//

import Foundation

class TSCountPresenter: NSObject ,TSCountInteratorOutPut {
    
    weak var countView: TSCountView?
    
    var interactor: TSCountInteractorInput!
    
    var countFormatter: NSNumberFormatter = NSNumberFormatter()
    // TSCountInteratorOutPut
    func updateView() {
        interactor.requestCount()
    }
    func increment() {
        interactor.increment()
    }
    func decrement() {
        interactor.decrement()
    }
    func updateCount(count: Int) {
        countView?.setCountText(formatterCount(count))
        countView?.setDecrementEnabled(canDecrement(count))
    }
    private func formatterCount(count: Int) -> String {
        countFormatter.numberStyle = .SpellOutStyle
        return countFormatter.stringFromNumber(count)!
    }
    private func canDecrement(count: Int) -> Bool {
        return count > 0
    }
    
}