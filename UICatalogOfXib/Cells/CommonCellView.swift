//
//  CommonCellViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/10.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

protocol CommonCellViewDelegate: class {
    func didTapImage()
}

class CommonCellView: XibView {
    
    @IBOutlet weak var imageView: UIImageView!
    internal weak var delegate: CommonCellViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setImageShape()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setImageShape()
    }
    @IBAction func didTapCell(_ sender: Any) {
        // セル全体をタップした後の処理はdelegateへ移譲する
        // delegate protocolの継承元（viewController等）でdidTapImageメソッド内の処理は定義する
        self.delegate?.didTapImage()
    }
    
}


extension CommonCellView {
    private func setImageShape() {
        // 写真の左上・右上の角を丸くする
        self.imageView.layer.cornerRadius = 15
        self.imageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
