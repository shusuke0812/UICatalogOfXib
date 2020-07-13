//
//  FloatingButton.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/12.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class FloatingButton: XibView {
   
    @IBOutlet weak var buttonName: UILabel!
    
    @IBAction func cellTap(_ sender: Any) {
        print("レシピ投稿ボタンがタップされました")
    }
}

