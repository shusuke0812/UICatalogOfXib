//
//  transitionViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/9/11.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class TransitionViewController: UIViewController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: -Action Method
    // Xibを使ったモーダル遷移
    @IBAction func transitionXibModalButton(_ sender: Any) {
        let vc: XibViewController = XibViewController(nibName: "XibViewController", bundle: nil)
        present(vc, animated: true)
    }
    // Stroyboardを使ったモーダル遷移
    @IBAction func transitionStoryboardButton(_ sender: Any) {
        let s: UIStoryboard = UIStoryboard(name: "StoryboardViewController", bundle: nil)
        let vc: StoryboardViewController = s.instantiateInitialViewController() as! StoryboardViewController
        vc.transMessage = "Storyboard Modalボタンがタップされました"
        present(vc, animated: true, completion: nil)
    }
}
