//
//  FloatingButtonContainerViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/7/14.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class FloatingButtonContainerViewController: UIViewController {

    
    @IBOutlet var floatingButton: FloatingButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        floatingButton.delegate = self
    }
}

extension FloatingButtonContainerViewController {
    func transitionPostRecipe() {
        let s = UIStoryboard(name: "PostRecipeViewController", bundle: nil)
        let vc = s.instantiateInitialViewController()!
        self.present(vc, animated: true, completion: nil)
    }
}


extension FloatingButtonContainerViewController: FloatingButtonDelegate {
    func didTapButton() {
        self.transitionPostRecipe()
    }
}
