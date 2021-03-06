//
//  XibViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/9/10.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class XibViewController: UIViewController {

    private let transMessage: String
    
    // MARK: - Initializer
    required init?(coder: NSCoder) {
        fatalError("init(coder:)が実装されていません")
    }
    
    init(msg: String, nibName: String?, bundle: Bundle?) {
        self.transMessage = msg
        super.init(nibName: nibName, bundle: bundle)
    }
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showTransMessage()
    }
}

extension XibViewController {
    func showTransMessage() {
        print(self.transMessage)
    }
}
