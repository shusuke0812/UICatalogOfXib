//
//  CommonCellViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/10.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class CommonCellView: UIView {

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
        self.addSubview(view)
    }

}
