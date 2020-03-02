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
        view.backgroundColor = .darkenOverlay
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let insuranceView = MainInsuranceView(hasSelectedInsurance: false)
    let myDoctorsButton = MyDoctorsButton()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .systemBackgroundDF
        translatesAutoresizingMaskIntoConstraints = false
        setupImageView()
        setupInsuranceView()
        setupMyDoctorsButton()
    }
    
    private func setupMyDoctorsButton(){
        addSubview(myDoctorsButton)

        
        NSLayoutConstraint.activate([
            myDoctorsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            myDoctorsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            myDoctorsButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3),
            myDoctorsButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32)
        ])
    }
    
    private func setupInsuranceView() {
        addSubview(insuranceView)
        
        NSLayoutConstraint.activate([
            insuranceView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            insuranceView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            insuranceView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8),
            insuranceView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3)
        ])
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
