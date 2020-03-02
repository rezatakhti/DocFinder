//
//  TransparentButton.swift
//  DocFinder
//
//  Created by Reza Takhti on 3/1/20.
//  Copyright © 2020 Reza Takhti. All rights reserved.
//

import UIKit

class TransparentButton : UIButton {
    
    init(text: String){
        super.init(frame: .zero)
        self.setTitle(text, for: .normal)
        setupButton()
    }
    
    private func setupButton(){
        translatesAutoresizingMaskIntoConstraints = false
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 10
        layer.masksToBounds = true
        titleLabel?.font = UIFont.systemFont(ofSize: 21, weight: .light)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
