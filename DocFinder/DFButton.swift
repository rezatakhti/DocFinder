//
//  DFButton.swift
//  DocFinder
//
//  Created by Reza Takhti on 2/29/20.
//  Copyright © 2020 Reza Takhti. All rights reserved.
//

import UIKit

class DFButton : UIButton {
    init(title: String){
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setupButton()
    }
    
    private func setupButton(){
        layer.cornerRadius = 25
        layer.masksToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .blueDF
        tintColor = .systemGray6DF
        titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .light)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
