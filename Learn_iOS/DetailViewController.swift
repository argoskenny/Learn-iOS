//
//  DetailViewController.swift
//  Learn_iOS
//
//  Created by 林中一 on 2018/6/27.
//  Copyright © 2018年 林中一. All rights reserved.
//

import UIKit

// 介面（協定）
protocol Person {
    var name: String { get set }
    var mobile: Int { get set }
    func getAge()
}

// 介面的子類別
class Jack: Person {
    var name: String = ""
    
    var mobile: Int = 0
    
    func getAge() {
        print("12")
    }
}

protocol DetailViewControllerDelegate: class {
    func getNumber(number: Int)
}

class DetailViewController: UIViewController {
    
    var number: Int = 0
    var abcd: String = ""
    weak var delegate: DetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let label = UILabel(frame: CGRect(x: 100.0, y: 100.0, width: 200.0, height: 40.0))
        label.text = String(number)
        self.view.addSubview(label)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.action, target: self, action: #selector(back))
        
        let btn = UIButton(frame: CGRect(x: 100.0, y: 200.0, width: 100.0, height: 50))
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action: #selector(shownumber), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func shownumber() {
        self.delegate?.getNumber(number: number)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
