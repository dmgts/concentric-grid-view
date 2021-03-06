//
//  CURectangleCollectionViewLayout.swift
//  CULayout
//
//  Created by Dmitry Gutsulyak on 5/31/15.
//  Copyright (c) 2015 SHAPE GmbH. All rights reserved.
//

import UIKit
import ConcentricGridView

class CRectangleCollectionViewLayout: CBaseCollectionViewLayout {
    
    override func prepareLayout() {
        super.prepareLayout()
        
        if let _collectionView = collectionView {
            
            concentricGridView = ConcentricGridViewRectangle(
                grid: _collectionView.frame.size,
                isShifted: false,
                centralCell: CGSizeMake(50, 50),
                peripheralCell: CGSizeMake(50, 50),
                cellMargin: 5
            )
            
            concentricGridView.createGrid()
            
        }
    }
    
}