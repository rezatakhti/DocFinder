//
//  MainTopView.swift
//  DocFinder
//
//  Created by Reza Takhti on 2/29/20.
//  Copyright © 2020 Reza Takhti. All rights reserved.
//

import UIKit

class MainTopView : UIView {
    
    let backgroundView : UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "MainPhoto"))
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let darkenOverlay : UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .systemBackgroundDF
        translatesAutoresizingMaskIntoConstraints = false
        setupImageView()
    }
    
    private func setupImageView() {
        addSubview(backgroundView)
        addSubview(darkenOverlay)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            darkenOverlay.topAnchor.constraint(equalTo: topAnchor),
            darkenOverlay.leadingAnchor.constraint(equalTo: leadingAnchor),
            darkenOverlay.trailingAnchor.constraint(equalTo: trailingAnchor),
            darkenOverlay.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
