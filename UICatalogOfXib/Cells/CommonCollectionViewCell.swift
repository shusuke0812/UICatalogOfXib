//
//  CommonCollectionViewCell.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/11/13.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class CommonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setUI()
    }
}
// MARK: - Initialized Method
extension CommonCollectionViewCell {
    private func setUI() {
        // 写真の左上・右上の角を丸くする
        self.imageView.layer.cornerRadius = 15
        self.imageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
