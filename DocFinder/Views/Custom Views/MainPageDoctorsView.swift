//
//  MainPageDoctorsView.swift
//  DocFinder
//
//  Created by Reza Takhti on 3/1/20.
//  Copyright © 2020 Reza Takhti. All rights reserved.
//

import UIKit

class MainPageDoctorsView : UIView {
    
    lazy var doctorsCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.delegate = self
       // cv.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellWithReuseIdentifier: <#T##String#>)
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension MainPageDoctorsView : UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
}
