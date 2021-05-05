//
//  CollectionViewModel.swift
//  UICatalogOfXib
//
//  Created by Shusuke Ota on 2020/11/13.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class CollectionViewModel: NSObject {
    /// セルのID
    private(set)  var items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
}
// MARK: - Setting Data Method
extension CollectionViewModel {
    func updateItemsWhenDrangAndDropCell(destinationIndexPath: IndexPath, sourceIndexPath: IndexPath) {
        let soucerItem = self.items.remove(at: sourceIndexPath.item)
        self.items.insert(soucerItem, at: destinationIndexPath.item)
    }
}
// MARK: - CollectionView DataSource
extension CollectionViewModel: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommonCollectionViewCell", for: indexPath) as! CommonCollectionViewCell
        cell.setIndexLabel(index: items[indexPath.row])
        return cell
    }
}
