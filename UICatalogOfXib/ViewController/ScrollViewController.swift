//
//  ScrollViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/11.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Xib Files on Scroll View"
        self.scrollView.delegate = self
    }
}

extension ScrollViewController: UIScrollViewDelegate {
    // スクロール量を取得（スクロール中は常に呼ばれる）
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentOffSet: CGPoint = scrollView.contentOffset
        print(contentOffSet)
    }
}
