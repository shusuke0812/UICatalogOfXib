//
//  CommonCellViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/10.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class CommonCellView: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        loadNib()
    }
    func loadNib() {
        let view = Bundle.main.loadNibNamed("CommonCellView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        
        // 写真の左上・右上の角を丸くする
        self.imageView.layer.cornerRadius = 15
        self.imageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        self.addSubview(view)
    }

}
