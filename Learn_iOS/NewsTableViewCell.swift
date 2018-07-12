//
//  NewsTableViewCell.swift
//  Learn_iOS
//
//  Created by 林中一 on 2018/7/12.
//  Copyright © 2018年 林中一. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    var newsImageView: UIImageView!
    var newsTitle: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        newsImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 150, height: 100))
        contentView.addSubview(newsImageView)
        
        newsTitle = UILabel(frame: CGRect(x: 170, y: 10, width: 200, height: 60))
        contentView.addSubview(newsTitle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
