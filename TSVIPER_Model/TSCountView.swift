//
//  TSCountView.swift
//  TSVIPER_Model
//
//  Created by 王磊 on 16/1/20.
//  Copyright © 2016年 tarena. All rights reserved.
//

import Foundation
protocol TSCountView: NSObjectProtocol {
    func setCountText(countText: String)
    func setDecrementEnabled(enabled: Bool)
}