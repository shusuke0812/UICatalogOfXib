//
//  CollectionViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/11/13.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
    }
}
// MARK: - Initialized Method
extension CollectionViewController {
    private func setUI() {
        // ナビゲーションタイトル設定
        self.navigationItem.title = "Xib Filed on Collection View"
    }
}
