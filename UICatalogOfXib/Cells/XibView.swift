//
//  XibView.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/11.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class XibView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNib()
    }
    private func loadNib() {
        // 自身と同じclass名のxibを読み込む
        let className: String = String(describing: type(of: self))
        let view: UIView = Bundle.main.loadNibNamed(className, owner: self, options: nil)?.first as! UIView
        view.backgroundColor = .white
        view.frame = self.bounds
        self.addSubview(view)
    }
}

