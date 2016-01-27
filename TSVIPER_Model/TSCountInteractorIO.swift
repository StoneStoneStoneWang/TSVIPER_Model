//
//  TSCountInteractor.swift
//  TSVIPER_Model
//
//  Created by 王磊 on 16/1/20.
//  Copyright © 2016年 tarena. All rights reserved.
//

import Foundation

protocol TSCountInteractorInput: NSObjectProtocol {
    
    func increment()
    func decrement()
    func requestCount()
    
}
protocol TSCountInteratorOutPut: NSObjectProtocol {
    func updateCount(count: Int)
}