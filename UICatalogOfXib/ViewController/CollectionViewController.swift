//
//  CollectionViewController.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/11/13.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    
    /// BaseView
    private var baseView: CollectionBaseView { self.view as! CollectionBaseView }
    /// ViewModel
    private var viewModel: CollectionViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = CollectionViewModel()
        self.setDelegateDataSource()
        self.setUI()
    }
}
// MARK: - Initialized Method
extension CollectionViewController {
    private func setUI() {
        // ナビゲーションタイトル設定
        self.navigationItem.title = "Xib Files on Collection View"
    }
    private func setDelegateDataSource() {
        self.baseView.collectionView.delegate = self
        self.baseView.collectionView.dataSource = self.viewModel
    }
}
// MARK: - CollectionView Delegate Method
extension CollectionViewController: UICollectionViewDelegate {
}
