//
//  CommonTableViewCell.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/10.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class CommonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageTableViewCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // 写真の左上・右上の角を丸くする
        self.imageTableViewCell.layer.cornerRadius = 15
        self.imageTableViewCell.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
