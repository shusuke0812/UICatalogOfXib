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
        self.baseView.collectionView.dropDelegate = self
        self.baseView.collectionView.dragDelegate = self
    }
}
// MARK: - CollectionView Delegate Method
extension CollectionViewController: UICollectionViewDelegate {
}
extension CollectionViewController: UICollectionViewDragDelegate {
    func collectionView(_ collectionView: UICollectionView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
        let index = indexPath.row.description as NSString
        let itemProvider = NSItemProvider(object: index)
        let dragItem = UIDragItem(itemProvider: itemProvider)
        return [dragItem]
    }
}
extension CollectionViewController: UICollectionViewDropDelegate {
    func collectionView(_ collectionView: UICollectionView, performDropWith coordinator: UICollectionViewDropCoordinator) {
        switch coordinator.proposal.operation {
        case .move:
            guard
                let destinationIndexPath = coordinator.destinationIndexPath,
                let sourceIndexPath = coordinator.items.first?.sourceIndexPath
            else { return }
            self.baseView.collectionView.performBatchUpdates({
                self.viewModel.updateItemsWhenDrangAndDropCell(destinationIndexPath: destinationIndexPath, sourceIndexPath: sourceIndexPath)
                self.baseView.collectionView.deleteItems(at: [sourceIndexPath])
                self.baseView.collectionView.insertItems(at: [destinationIndexPath])
            })
        case .cancel, .forbidden, .copy:
            return
        @unknown default:
            fatalError()
        }
    }
    func collectionView(_ collectionView: UICollectionView, dropSessionDidUpdate session: UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UICollectionViewDropProposal {
        if session.localDragSession != nil {
            return UICollectionViewDropProposal(operation: .move, intent: .insertAtDestinationIndexPath)
        } else {
            return UICollectionViewDropProposal(operation: .cancel)
        }
    }
}
// MARK: - UICollectionView Delegate FlowLayout Method
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSapece: CGFloat = 2.0
        let cellSize: CGFloat = self.baseView.bounds.width / 2 - horizontalSapece
        return CGSize(width: cellSize, height: cellSize)
    }
}
