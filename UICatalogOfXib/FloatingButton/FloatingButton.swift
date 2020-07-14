//
//  FloatingButton.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/12.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

protocol FloatingButtonDelegate: class {
    func didTapButton()
}

class FloatingButton: XibView {
   
    @IBOutlet weak var buttonName: UILabel!
    internal weak var delegate: FloatingButtonDelegate! = nil
    
    @IBAction func buttonTap(_ sender: Any) {
        // ボタンをタップしたらそのことをdelegateへ伝える
        // 継承元（viewController等）でdidTapImageメソッド内の処理は定義する
        self.delegate?.didTapButton()
    }
}

