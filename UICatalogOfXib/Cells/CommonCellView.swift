//
//  CommonCellViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/10.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class CommonCellView: XibView {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImageShape()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setImageShape()
    }
}


extension CommonCellView {
    private func setImageShape() {
        // 写真の左上・右上の角を丸くする
        self.imageView.layer.cornerRadius = 15
        self.imageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
