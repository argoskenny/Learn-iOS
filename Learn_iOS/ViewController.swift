//
//  ViewController.swift
//  Learn_iOS
//
//  Created by 林中一 on 2018/6/27.
//  Copyright © 2018年 林中一. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DetailViewControllerDelegate, UITableViewDataSource, UITableViewDelegate {
    
    var number: Int = 0
    var data: [String] = []
    var dataTitle: [String] = []
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateTableView()
        data = ["a","b","c","a","b","c","a","b","c"]
        dataTitle = ["alkcnklascnlk","a;cmal;sc","alkncaklsnv","a;lvmal;sv","a;lscml;acm","alcsnmaslc","alkcsla","alsnclacns","c"]
    }
    
    func initiateTableView() {
        tableView = UITableView(frame: self.view.frame)
        tableView.register(NewsTableViewCell.self, forCellReuseIdentifier: "newsCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "abc")
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.view.addSubview(tableView)
    }
    
    func initiateButton() {
        let btn: UIButton = UIButton(frame: CGRect(x: 100.0, y: 100.0, width: 100.0, height: 60.0))
        btn.backgroundColor = UIColor.green
        btn.addTarget(self, action: #selector(pushToDetail), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    
    @objc func pushToDetail() {
        let detail = DetailViewController()
        detail.number = 456
        detail.delegate = self
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    func getNumber(number: Int) {
        print("HELLO")
        print(number)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsTableViewCell
        cell.newsImageView.image = UIImage(named: data[indexPath.row] + "_img")
        cell.newsTitle.text = dataTitle[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
