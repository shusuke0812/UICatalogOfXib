//
//  NormalViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/10.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class NormalViewController: UIViewController {

    // xibのデリゲートメソッドを実装するために必要な宣言
    @IBOutlet weak var commonCellView: CommonCellView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Xib Files on Normal View"
        commonCellView.delegate = self
    }
}

// --- カスタムViewのタップイベントを元に実行するdelegateメソッド ---
extension NormalViewController {
    private func transitionPostRecipe() {
        let s = UIStoryboard(name:"PostRecipeViewController", bundle: nil)
        let vc = s.instantiateInitialViewController()!
        self.present(vc, animated: true, completion: nil)
    }
}

extension NormalViewController: CommonCellViewDelegate {
    func didTapImage() {
        self.transitionPostRecipe()
    }
}
// --------------------------------------------------------
