//
//  StroyboardViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/9/10.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class StoryboardViewController: UIViewController {

    var transMessage: String?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        showTransMessage()
    }
}

extension StoryboardViewController {
    func showTransMessage() {
        guard let message = self.transMessage else {
            print("DEBUG： 遷移元から値が渡されませんでした")
            return
        }
        print("DEBUG： \(message)")
    }
}
