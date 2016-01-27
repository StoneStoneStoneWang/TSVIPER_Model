//
//  ViewController.swift
//  TSVIPER_Model
//
//  Created by 王磊 on 16/1/20.
//  Copyright © 2016年 tarena. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,TSCountView {
    
    var countLabel: UILabel!
    var decrementBtn: UIButton!
    var incrementBtn: UIButton!
    var presenter: TSCountPresenter!
    
    override func viewWillAppear(animated: Bool) {

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configSubview()
        
        
        
    }
    func configSubview() {
        
        view.backgroundColor = UIColor.whiteColor()
        
        countLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 200, height: 30))
        
        countLabel.text = nil
        
        view.addSubview(countLabel)
        
        decrementBtn = UIButton(type: .System)
        
        decrementBtn.backgroundColor = UIColor.redColor()
        
        decrementBtn.setTitle("decrement", forState: .Normal)
        
        decrementBtn.addTarget(self, action: "decrement", forControlEvents: .TouchUpInside)
        
        decrementBtn.frame = CGRect(x: 30, y: 100, width: 100, height: 30)
        
        view.addSubview(decrementBtn)
        
        incrementBtn = UIButton(type: .System)
        
        incrementBtn.frame = CGRect(x: 150, y: 100, width: 100, height: 30)
        
        incrementBtn.backgroundColor = UIColor.redColor()
        
        incrementBtn.setTitle("increment", forState: .Normal)
        
        incrementBtn.addTarget(self, action: "increment", forControlEvents: .TouchUpInside)
        
        view.addSubview(incrementBtn)
        
        presenter.updateView()
        
    }
    // MARK: TSCountView
    func setCountText(countText: String) {
        countLabel.text = countText
    }
    func setDecrementEnabled(enabled: Bool) {
        decrementBtn.enabled = enabled
    }
    func increment() {
        presenter.increment()
    }
    func decrement() {
        presenter.decrement()
    }
}

