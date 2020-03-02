//
//  BlueLineView.swift
//  DocFinder
//
//  Created by Reza Takhti on 2/29/20.
//  Copyright © 2020 Reza Takhti. All rights reserved.
//

import UIKit

class BlueLineView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .blueDF
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
